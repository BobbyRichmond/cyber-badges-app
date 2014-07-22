CyberBadgesApp::Application.routes.draw do
  devise_for :users

  resources :badges_templates


  resources :accounts do
    resources :badges
  end

  root :to => 'home#index'
  get "home/index"


end
