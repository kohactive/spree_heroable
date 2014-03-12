Spree::Core::Engine.routes.draw do
  
  resources :slides

  namespace :admin do
    resources :products, only: [] do
      resources :slides
    end
  end

end
