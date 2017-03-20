class ProposalsController < ApplicationController

  include Elasticsearch::DSL
  include SlugRedirectable

  before_action :find_proposal, only: [:show, :activate, :deactivate]
  before_action :set_proposal_keywords, only: [:show]
  before_action :get_proposal_assets, only: [:show]

  def index
    records = Proposal.__elasticsearch__.search(query).page(page).per(per)

    if records.count > 0
      total_count = records.response.hits.total

      sort = "CASE #{records.map.with_index { |record, index| "WHEN id=#{record.id} THEN #{index}" }.join("\n")} END"

      @proposals = Kaminari::paginate_array(
        records.records.includes(:banner, :delay, :style, :category, artist: [:admin, :profile]).order(sort), total_count: total_count
      ).page(page).per(per)
    else
      @proposals = Proposal.none.page(page).per(per)
    end
  end

  def show
    authorize @proposal

    PublicActivity::Activity.mark_as_read!(PublicActivity::Activity.where(trackable: @proposal).to_a, for: current_user) if current_user
  end

  def activate
    authorize @proposal

    @proposal.update(visible: true)

    head :no_content
  end

  def deactivate
    authorize @proposal

    @proposal.update(visible: false)

    head :no_content
  end

  def opensearch
    response.headers["Content-Type"] = 'application/opensearchdescription+xml'
    render :layout => false
  end

  protected

  def query

    relevance = [
      { "wishes_count" => { "order": "desc" } },
      { "banner_id" => { order: "desc" } },
      { "usd_price" => { order: "asc" } }
    ]
    sort = []
    case params[:sort_by]
    when "relevance"
      sort = relevance
    when "price_desc"
      sort.push({ "usd_price" => { order: "desc" } })
    when "price_asc"
      sort.push({ "usd_price" => { order: "asc" } })
    when "created_at_desc"
      sort.push({ "created_at" => { order: "desc" } })
    when "created_at_asc"
      sort.push({ "created_at" => { order: "asc" } })
    else
      sort = relevance
    end

    sorting_rules = { sort: sort }

    filter_terms = [
      { "term" => { "is_deleted" => false } }
    ]

    if params[:maximum_price].present?
      filter_terms.push({ "range" => { "usd_price" => { "lte" => params[:maximum_price].to_f }}})
    end

    if params[:minimum_price].present?
      filter_terms.push({ "range" => { "usd_price" => { "gte" => params[:minimum_price].to_f }}})
    end

    if params[:category].present?
      filter_terms.push({ "match" => { "category.key" => params[:category] }})
    end

    if params[:style].present?
      filter_terms.push({ "match" => { "style.key" => params[:style] }})
    end

    if params[:delay].present?
      filter_terms.push({ "range" => { "delay.rank" => { "lte" => params[:delay] }}})
    end

    query_params =
      if (query_string = params.permit(:q)["q"]).present?
        {
          "query": {
            "bool": {
              "must": [
                :multi_match => {
                  :query => query_string,
                  :operator => "and",
                  :type => "cross_fields",
                  :fields => ["title^2", "description", "artist.name^3", "tags.name", "style.name^2"]
                }
              ],
              "filter": filter_terms
            }
          }
        }
      else
        {
          "filter": {
            "bool": {
              "must": filter_terms
            }
          }
        }
      end.merge(sorting_rules)

  end

  def find_proposal
    @proposal = Proposal.find(params[:id] || params[:proposal_id])

    redirect_if_new_slug_for(@proposal, [:id, :proposal_id])
  end

  def get_proposal_assets
    @proposal_assets = @proposal.assets
  end

  def set_proposal_keywords
    @keywords += [@proposal.title.split, @proposal.artist.name]
  end
end
