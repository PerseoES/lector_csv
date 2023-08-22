class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf { render  pdf: @user.alumno, disposition: 'attachment', layout: 'layouts/pdf'}
    end
  end
end
# attachment , para descargar el archivo
# inline , te lo abre en otra pestaña
