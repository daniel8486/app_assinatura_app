Rails.application.routes.draw do
  
  namespace :site do
    get 'welcome/index'
    post 'welcome/index'
  end

  namespace :site do
    get 'carts/index'
  end

  root to: 'site/welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
