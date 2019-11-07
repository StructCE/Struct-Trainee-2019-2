class TaskController < ApplicationController
    def new
        @task = Task.new
    end

    def create
        # Trocar por um método privado do controller (mostrado em aula)
        @task = Task.new(:title => params[:task][:title],
                         :description => params[:task][:description],
                         :date_task => params[:task][:date_task])
        # Melhorar condição para salvar quando terminar o show do usuário
        @task.save
    end

    def index

    end

    def show

    end

    def edit

    end

    def update

    end

    def destroy

    end
end
