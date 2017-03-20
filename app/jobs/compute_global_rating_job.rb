class ComputeGlobalRatingJob < ApplicationJob
  queue_as :default

  def rating_to_score(rating)
    return 0 if rating.nil?

    Quotation::SENTIMENTS.find_index(rating.to_sym) - (Quotation::SENTIMENTS.count / 2)
  end

  def perform(user, as)
    quotations = user.send("quotations_as_#{as}")
    scores = quotations.map do |quotation|
      rating_to_score(quotation.send("#{as}_rating"))
    end

    user.update("#{as}_rating" => (scores.sum.to_f / quotations.count))
  end
end
