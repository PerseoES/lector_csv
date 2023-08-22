class DeletedUsersController < ApplicationController
  def index
    @deleted_users = DeletedUser.all
  end

  def create
    @deleted_user = DeletedUser.create(deleted_user_params)
    if @deleted_user.save
      redirect_to deleted_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def deleted_user_params
      params.require(:deleted_user).permit(:ci, :password, :first_name, :last_name, :email, :tanda, :orientation, :last_id)
    end
end
