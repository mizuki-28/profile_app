class UsersController < ApplicationController
  before_action :logged_in_user, except: :top

  def top
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "自己紹介を更新しました"
      redirect_to @user
    else
      flash.now[:danger] = "自己紹介を更新できませんでした"
      render :edit, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :introduction, :avatar)
    end

end
