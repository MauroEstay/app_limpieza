Rails.application.routes.draw do
  get 'hometasks/create'

  resources :homes, only: :index do
    resources :tasks, only: :index do
      resources :hometasks, only: [:create, :destroy]
    end
  end
  resources :tasks, only: :index

  resources :hometasks, only: :index

  root to: 'homes#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# do
#     resources :hometasks, only: :create
# end
