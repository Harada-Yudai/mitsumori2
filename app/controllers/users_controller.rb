class UsersController < ApplicationController
  skip_before_action :login_required, only: ["index","new"]

  def edit
    @user= User.find(params[:id])
  end

  def update
    @user= User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def new
    @user= User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      redirect_to
    end
  end

  def index
    user= User.new
    unless current_user.nil?
      @clients = Client.where(user_id: current_user.id).order('created_at DESC')
    end
  end

  private

  def user_params
    params.require(:user).permit(:email,:password,:password_confirmation,:last_name,:first_name,:company,:address,:phone_num,:info)
  end

end