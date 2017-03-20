class AddArtistIdToQuotations < ActiveRecord::Migration[5.0]
  def change
    add_reference :quotations, :artist, index: true

    Quotation.find_each { |q| (q.update(artist: q.proposal.artist) if q.proposal.present?) }
  end
end
