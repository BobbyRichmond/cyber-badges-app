CyberBadgesApp::Application.routes.draw do
  resources :badges_templates


  resources :accounts do
    resources :badges
  end

  root :to => 'home#index'
  get "home/index"


end
