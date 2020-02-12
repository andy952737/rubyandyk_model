Rails.application.routes.draw do
    #Backend routes 
    namespace :backend do
      resources :session,only: %w(index create destroy) do
        collection do
          get :logout
        end  
      end
      resources :admin
      resources :system,only: %w(edit update)
    end
    resources :backend
    #match ':controller(/:action(/:id))(.:format)', via: [:get, :post]
end 