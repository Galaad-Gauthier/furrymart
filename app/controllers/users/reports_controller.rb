class Users::ReportsController < ApplicationController
  before_action :find_user, only: [:create]
  before_action :build_report, only: [:create]

  def create
    @report.assign_attributes(report_params)
    authorize @report

    if @report.save
      flash[:notice] = I18n.t("users.reports.create.success")
    end

    redirect_back(fallback_location: root_path)
  end

  protected

  def find_user
    @user = User.find(params[:user_id])
  end

  def build_report
    @report = Report.new(user: @user)
  end

  def report_params
    strong_params(Report.new)
  end
end
