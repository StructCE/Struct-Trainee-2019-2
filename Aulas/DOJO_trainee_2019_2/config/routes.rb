Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope 'user' do
    get '', to: 'user#index', as: :users
    get '/new', to: 'user#new', as: :new_user
    post "",to: 'user#create'
    get '/:id', to: 'user#show', as: :user
    get '/:id/edit', to: 'user#edit', as: :edit_user
    patch '/:id', to: 'user#update'
    delete '/:id', to: 'user#destroy'
  end
end
