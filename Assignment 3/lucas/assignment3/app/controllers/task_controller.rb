class TaskController < ApplicationController
    def new
        @task = Task.new
    end

    def create
        # Trocar por um método privado do controller (mostrado em aula)
        @task = Task.new(task_params)
        # Melhorar condição para salvar quando terminar o show do usuário
        if @task.save
            redirect_to task_index_path
        else
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
        @task.update(task_params)
        redirect_to task_index_path
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy

        redirect_to task_index_path
    end

    private
    def task_params
        params.require(:task).permit(:title, :description, :date_task)
    end
end
