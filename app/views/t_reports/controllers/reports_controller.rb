class ReportsController < ApplicationController
  def index
    @student = Student.find(params[:student_id])
    @reports = @student.reports
  end

  def show
    @student = Student.find(params[:student_id])
    @report = @student.reports.find(params[:id])
  end
end
