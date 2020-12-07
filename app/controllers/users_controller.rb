class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @appjans = []
    for i in 1..31 do
      @appjans << Appjan.find_by(date: i,username: @user.username)
    end
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

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    flash[:notice]="ユーザーを削除しました"
    redirect_to("/users/index")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(email: params[:email],password: params[:password],username: params[:username])
    if @user.save
      flash[:notice]="新規従業員の登録が完了しました"
      redirect_to("/users/index")
    else
      flash[:notice]="新規従業員の登録に失敗しました"
      render("users/index")
    end
  end
end
