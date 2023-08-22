class DeletedReportsController < ApplicationController
  def index
    @deleted_user = DeletedUser.find(params[:deleted_user_id])
    @deleted_reports = @deleted_user.deleted_reports
  end

  def create
    @deleted_user = DeletedUser.find(params[:id])
    @deleted_report = @deleted_user.deleted_reports.new(deleted_report_params)
    if @deleted_report.save
      render json: @deleted_report, status: :created
    else
      render json: @deleted_report.errors, status: :unprocessable_entity
    end
  end

  private
    def deleted_report_params
      params.require(:deleted_deleted_report).permit(:date, :pregunta_martes, :sub_pregunta_martes, :pregunta_miercoles, :sub_pregunta_miercoles, :pregunta_jueves, :sub_pregunta_jueves, :feedback, :punctuation)
    end
end
