class UsersController < ApplicationController
  before_action :authenticate_user,{only:[:index, :show, :destroy, :new, :create, :logout, :show]}
  before_action :authenticate_adminuser,{only:[:index, :destroy, :new, :create]}

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @appjans = []
    @conjans = []
    for i in 1..31 do
      @appjans << App_january.find_by(work_date: i,username: @user.username)
      @conjans << Con_january.find_by(work_date: i,username: @user.username)
    end
  end

  def login
    @user = User.find_by(email: params[:email],password: params[:password])
    if @user && @user.admin?
      flash[:notice]="管理者としてログインしました"
      session[:user_id]=@user.id
      redirect_to("/users/index")
    elsif @user
      flash[:notice]="ログインしました"
      session[:user_id]=@user.id
      redirect_to("/users/#{session[:user_id]}")
    else
      flash[:notice]="EmailまたはPASSWORDが間違っています"
      render("home/top")
    end
  end

  def logout
    session[:user_id]=nil
    flash[:notice]="ログアウトしました"
    redirect_to("/")
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @userappjan = App_january.where(username: @user.username)
    @userconjan = Con_january.where(username: @user.username)
    @userappjan.destroy_all
    @userconjan.destroy_all
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
