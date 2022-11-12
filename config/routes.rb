Rails.application.routes.draw do
  authenticated :user, ->(user) {user.admin? } do
    get 'admin', to: 'admin#index'
    get 'admin/posts'
    get 'admin/show_post'
  end
  resources :posts
  devise_for :users
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
