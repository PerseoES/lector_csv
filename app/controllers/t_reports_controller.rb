class TReportsController < ApplicationController
  def index
    @t_reports = TReport.all
  end

  def show
    @t_report = TReport.find(params[:id])
    @user = User.find_by(documento: @t_report.documento)
    respond_to do |format|
      format.html
      format.json
      format.pdf { render  pdf: @t_report.alumno, disposition: 'attachment', template: 't_reports/show'}
    end
  end
end
# attachment , para descargar el archivo
# inline , te lo abre en otra pestaña
