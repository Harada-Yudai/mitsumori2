class UsersController < ApplicationController
  skip_before_action :login_required

  def edit
  end

  def update
  end

  def new
    @user= User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
      
      # @clients = Client.where(user_id: current_user.id).order('created_at DESC')
  end

  private

  def user_params
    params.require(:user).permit(:email,:password, :password_confimation,:last_name,:first_name,:company,:address,:phone_num,:info)
  end

end