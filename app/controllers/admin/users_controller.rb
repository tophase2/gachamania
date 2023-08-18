class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!
  before_action :ensure_user, only: [:show, :edit, :update]
  
  def index
    @users = User.page(params[:page])
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      flash[:notice] = "変更しました。"
      redirect_to admin_users_path
    else
      flash.now[:alert] = "変更できませんでした。"
      render :edit
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :is_active)
  end
  
  def ensure_user
    @user = User.find(params[:id])
  end
end
