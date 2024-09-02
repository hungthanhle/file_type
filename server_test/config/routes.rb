Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :users
  get 'send_a_file', to: 'users#send_a_file'
  get 'render_a_file', to: 'users#render_a_file'
  get 'send_a_data', to: 'users#send_a_data'
  get 'apk', to: 'users#apk'
  post 'users/create_user', to: 'users#create_user'
  resources :reports
end
