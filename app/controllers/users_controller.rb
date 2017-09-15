class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_do = user_status_task(0)
    @user_done = user_status_task(1)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

  def user_status_task(n)
    Task.joins(:user_tasks)\
        .where(user_tasks: { user_id: params[:id], done: n })
  end
end
