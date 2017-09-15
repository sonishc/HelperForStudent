class UserTasksController < ApplicationController
  def index
    @user_task = UserTask.all
  end

  def new
    @user_task = UserTask.new
  end

  def create
    @user_task = UserTask.new(user_task_params)
    if @user_task.save
      redirect_to @user_task
    else
      render 'new'
    end
  end

  def edit
    @user_task = UserTask.find(params[:id])
    if @user_task.done == 0 
       @user_task.update_attributes(done: 1)
    else
       @user_task.update_attributes(done: 0)
    end
    sleep(0.8)
    redirect_to current_user
  end

  private

  def user_task_params
    params.require(:user_task).permit(:user_id, :task_id, :done)
  end
end
