Rails.application.routes.draw do
  
    #首頁
    #root 'home#index' #home 
    
    #活動 
    #get '/activity/index'
    #get '/activity/show/:id', to: 'activity#show', as: 'activity_show'
  
    #微商店
    #get '/store/index', to: 'store#index', as: 'store_index'
  
    # namespace :backend do
    #   get 'news/index' 
    # end
  
    # namespace :backend do
    #   get 'post/index' 
    # end
      
    # #api test
    # namespace :api do 
    #   resources :response do
    #     collection do
    #       post :add_api
    #     end
    #   end
    # end
  
    # devise_for :users,
    #     :controllers => {
    #       :registrations => "users/registrations",
    #       :sessions => "users/sessions" }
  
    # Devise DELETE, destroy_user_session_path
    # devise_scope :user do
    #   get '/signout', to: 'devise/sessions#destroy', sas: :signout
    # end 
  
      #backend
      # namespace :backend do
      #   get 'session/index'
      # end
  
    #   resources :ckeditor do
    #     #root to: :index
    #     collection do
    #       match :ck_upload,via: [:get, :post]
    #     end
    #   end
  
      #管理後台
      namespace :backend do
        resources :session,only: %w(index create destroy) do
          collection do
            get :logout
          end 
        end
  
        resources :admin
        resources :system,only: %w(edit update)
        resources :post_list 
        resources :property_list
   
        resources :message do
          collection do  
            get "/say_mail/:id", to: "message#say_mail", as: 'say_mail'
          end
        end
         
        resources :property do
          collection do 
            post :property_ajax_test
            get :property_list_new
            #get :edit_list
            get "/edit_list/:id", to: "property#edit_list", as: 'edit_list'
            #put :update_list
            put "/update_list/:id", to: "property#update_list", as: 'update_list'
          end
        end
        resources :twitr_news do
          collection do
            post :upload_create
            get :export_index
          end
        end
        resources :categorys do 
          #root to: :index 
          collection do
            get :sub_show 
          end
         end
         resources :copyright do
           collection do
             get :sub_show
           end 
         end
         resources :activity  
         resources :holy_keyword
         resources :user do
          collection do
            #get :sub_show
          end
         end 
         resources :idea_video 
         resources :portfolio
      end
      resources :backend
  
      # match ':controller(/:action(/:id))(.:format)', via: [:get, :post]
end 