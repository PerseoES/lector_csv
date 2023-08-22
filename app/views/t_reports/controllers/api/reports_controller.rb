module Api
  class ReportsController < ApiController
    def create
      @student = Student.find(params[:student_id])
      @report = @student.reports.new(report_params)
      if @report.save
        render json: @report, status: :created
      else
        render json: @report.errors, status: :unprocessable_entity
      end
    end

    private
      def report_params
        params.require(:report).permit(:date, :pregunta_martes, :sub_pregunta_martes, :pregunta_miercoles, :sub_pregunta_miercoles, :pregunta_jueves, :sub_pregunta_jueves, :feedback, :punctuation)
      end
  end
end
