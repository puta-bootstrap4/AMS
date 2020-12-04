class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show

  end

  def login
    @user = User.find_by(email: params[:email],password: params[:password])
    if @user && @user.admin?
      flash[:notice]="管理者としてログインしました"
      session[:user_id]=@user.id
      redirect_to("/users/index")
    else
      flash[:notice]="ログインしました"
      session[:user_id]=@user.id
      redirect_to("/users/#{session[:user_id]}")
    end
  end

  def logout
    session[:user_id]=nil
    flash[:notice]="ログアウトしました"
    redirect_to("/")
  end

end
