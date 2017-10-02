class TasksController < ApplicationController
  def show
    @task = Task.new
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_url
    else
      render 'show'
    end
  end

  def update
    task = Task.find(params[:id])
    if task.update_attributes(task_params)
      @task = Task.new
      @tasks = Task.all
      redirect_to tasks_url
    else
      render 'show'
    end
  end

  def delete
    task = Task.find(params[:id])
    if task.destroy
      @task = Task.new
      @tasks = Task.all
      redirect_to tasks_url
    else
      render 'show'
    end
  end

  private
  
  def task_params
    params.require(:task).permit(:name, :limit)
  end
end
