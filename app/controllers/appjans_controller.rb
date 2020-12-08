class AppjansController < ApplicationController
  before_action :authenticate_user,{only:[:new,:create,:edit,:update]}
  before_action :ensure_correct_user,{only:[:new,:create,:edit,:update]}
  def new
    @user = User.find_by(id: params[:id])
    @date = params[:date]
  end

  def create
    @user = User.find_by(id: params[:id])
    @appjan = Appjan.new(date: params[:date],start_time: params[:start_time],end_time: params[:end_time],holiday: params[:holiday].to_i,username: @user.username)
    if @appjan.save
      flash[:notice]="希望勤務時間帯を登録しました"
      redirect_to("/users/#{@user.id}")
    else
      flash[:notice]="希望時間帯または休日を入力してください"
      redirect_to("/users/#{@user.id}")
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
    @appjan = Appjan.find_by(date: params[:date],username: @user.username)
  end

  def update
    @user = User.find_by(id: params[:id])
    @appjan = Appjan.find_by(date: params[:date],username: @user.username)
    @appjan.start_time = params[:start_time]
    @appjan.end_time = params[:end_time]
    @appjan.holiday = params[:holiday].to_i
    if @appjan.save
      flash[:notice]="勤務希望時間の編集が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      flash[:notice]="勤務時間または休日を入力してください"
      redirect_to("/users/#{@user.id}")
    end
  end
end
