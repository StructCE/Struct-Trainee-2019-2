Rails.application.routes.draw do
  scope 'tasks' do
    get '', to: 'task#index', as: :tasks
    get '/new', to: 'task#new', as: :new_task
    post "",to: 'task#create'
    get '/:id', to: 'task#show', as: :task
    get '/:id/edit', to: 'task#edit', as: :edit_task
    patch '/:id', to: 'task#update'
    delete '/:id', to: 'task#destroy'
  end
end

