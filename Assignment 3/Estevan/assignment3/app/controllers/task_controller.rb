class TaskController < ApplicationController
  def new
    @task = Task.new
    @page_title = "Task creation form"
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:creat_success] = "Task created successfully!"
      @page_title = "Tasks"
      redirect_to tasks_path
    else
      flash[:creat_failed] = "Task creation failed! Make sure to input task title."
      @page_title = "Task creation form"
      redirect_to new_task_path
    end
  end

  def index
    @tasks = Task.all
    @page_title = "Tasks"
  end

  def show
    @task = Task.find(params[:id])
    @page_title = @task.title
  end

  def edit
    @task = Task.find(params[:id])
    @page_title = "Edit task" + " '" + @task.title + "'"
  end

  def update
    @task = Task.find(params[:id])
    @page_title = "Edit task"
    if @task.update(task_params)
      flash[:updated] = "All changes were saved."
      redirect_to task_path(params[:id])
    else
      flash[:update_failed] = "No changes were made. Make sure to input task title."
      redirect_to edit_task_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      flash[:deleted] = "Task deleted."
    else
      flash[:deleted] = "Error! Task was not deleted."
    end
    @page_title = "Tasks"
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :achievement_date, :achievement_time)
  end
end

