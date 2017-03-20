module SlugRedirectable

  extend ActiveSupport::Concern

  included do

    def redirect_if_new_slug_for(record, params_keys)
      parameter_key = params.slice(*params_keys).keys.first

      unless params[parameter_key] == record.slug || params[:format] == "js"
        return redirect_to(parameter_key => record.slug, :status => :moved_permanently)
      end
    end

  end

end
