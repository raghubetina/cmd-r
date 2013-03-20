CmdR::Application.routes.draw do
  resources :marks
  authenticated :user do
    root :to => 'marks#index'
  end
  root :to => redirect("/users/login")
  devise_for :users
  resources :users
end
