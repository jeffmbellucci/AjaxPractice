AjaxDemo::Application.routes.draw do
  root :to => "Users#new"

  resources :secrets, :except => [:new, :create]
  resource :session
  resources :users do
    resources :secrets, :only => [:new, :create]
    resources :friendships, :only => [:create, :destroy]
  end
end
