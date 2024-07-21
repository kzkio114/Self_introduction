Rails.application.routes.draw do
 root "tops#index"
  get 'tops/show', as: 'tops_show'
 
 post 'tops/my_show', as: 'tops_my_show'
 get 'tops/my_show', as: 'tops_my_get'

 resources :tops, only: [:index, :create] do
  collection do
    post :close_modal
    post :my_show
    post :show_button
  end
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
