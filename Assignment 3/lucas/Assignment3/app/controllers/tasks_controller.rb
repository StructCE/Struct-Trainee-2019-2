class TasksController < ApplicationController
    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            flash[:success] = "task criada com sucesso"
            redirect_to @task
        else
            flash[:notice] = "erro"
            redirect_to new_task_path
        end
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        @task = Task.find(params[:id])
 
        if @task.update(task_params)
            redirect_to @task
        else
            render 'edit'
        end
    end

    def show
        @task = Task.find(params[:id])
    end

    def index
        @tasks = Task.all
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
 
        redirect_to tasks_path
    end

    private
        def task_params
            params.require(:task).permit(:title, :description, :achievemnt_date)
        end


end
