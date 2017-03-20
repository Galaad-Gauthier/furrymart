class FeedbacksController < ApplicationController
  def create
    @feedback = Feedback.new(strong_params(Feedback.new))

    authorize @feedback

    if @feedback.save
      flash[:notice] = I18n.t("feedbacks.create.success")
    end

    redirect_back(fallback_location: root_path)
  end
end
