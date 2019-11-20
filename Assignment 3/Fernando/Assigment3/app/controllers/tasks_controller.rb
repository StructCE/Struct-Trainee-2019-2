class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    # Melhorar condição para salvar quando terminar o show do usuário
    if @task.save
      flash[:created] = 'Task created successfully!'
      redirect_to tasks_path
    else
      flash[:not_created] = 'Task not created! Are you sure that you informed a title?'
      render 'new'
    end
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      flash[:updated] = "Task updated successfully!"
      redirect_to task_path(params[:id])
    else
      flash[:not_updated] = "Taks was not updated! Are you sure that you informed a title?"
      redirect_to edit_task_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      flash[:deleted] = "Task deleted successfully!"
    else
      flash[:deleted] = "Task was not deleted! Something must have gone wrong!"
    end
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :description, :date_task)
  end
end