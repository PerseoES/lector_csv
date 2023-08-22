class AdminsController < ApplicationController
  before_action :admin_find, only: %i[edit update destroy]

  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.create(admin_params)
    if @admin.save
      redirect_to admins_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @admin.update(admin_params)
      redirect_to admins_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @admin.destroy
    redirect_to admins_path
  end

  private
    def admin_params
      params.require(:admin).permit(:email, :first_name, :last_name, :password)
    end

    def admin_find
      @admin = Admin.find(params[:id])
    end
end
