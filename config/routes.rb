Rails.application.routes.draw do
  
  
  resources :restaurant_daily_menus, path: "restaurant-daily-menus" do 
    get "delete"
  end
  resources :food_categories, path: "food-categories" do 
    get "delete"
  end
  
  resources :restaurant_opening_times, path: "restaurant-opening-times" do 
    get "delete"
  end
  
  resources :order_statuses do 
    get "delete"
  end

  resources :order_items do 
    get "delete"
  end

  resources :orders do 
    get "delete"
  end

  resources :customers do 
    get "delete"
  end

  resources :food_restaurants, path: "food-restaurants" do 
    get "delete"
  end

  resources :foods do 
    get "delete"
  end

  resources :restaurants do 
    get "delete"
  end

  resources :users do 
    get "delete"
  end

  get "/search" => "searches#advanced_search", as: :advanced_search
  
  resources :cities do 
    get "delete"
  end

  resources :features do 
  	get "delete"
  end

  #resources :smtp_server_settings

  get "/settings/smtp-server" => "smtp_server_settings#smtp_settings", as: :smtp_settings
  #get ":slug" => "pages#show", as: :show_page

  scope "settings" do
    resources :configs, except: [:show]
    get "smtp" => "configs#smtp_configs", as: :smtp_configs
    get "smtp/new" => "configs#new_smtp_config", as: :new_smtp_config
    get "smtp/edit/:id" => "configs#edit_smtp_config", as: :edit_smtp_config
  end

  root to: "front#home"
   get "/dashboard" => "dashboard#index", as: :dashboard

  #get '/inquiry_form' => 'contact_email#inquiry', as: :inquiry_email
  #get "/properties/all" => "front#properties", as: :load_all_properties
  #get "/profile/:login/edit" => "profile#edit", as: :user_profile
  #get 'users/edit' => 'users/registrations#edit', as:  :edit_user_registration
  #get "search" => "properties#search", as: :search_properties
  #get "/user/enable/:id" => "custom_users#get_enable", as: :get_enable_user_account
	#post "/user/enable/:id" => "custom_users#post_enable", as: :post_enable_user_account
	#get "/user/disable/:id" => "custom_users#get_disable", as: :get_disable_user_account
  #post "/user/disable/:id" => "custom_users#post_disable", as: :post_disable_user_account
  

  get "/accounts"     => "custom_accounts#index", as: :all_accounts 
  #get "/users/unregistered"     => "custom_users#unregistered", as: :unregistered_commission_percentage 
  post "/accounts/new"     => "custom_accounts#create", as: :create_account
  get "/accounts/new"     => "custom_accounts#new", as: :new_account
  get "/account/edit/:id" => "custom_accounts#edit", as: :edit_account
  patch "/account/update/:id" => "custom_accounts#update", as: :udapte_account
  delete "/account/destroy/:id" => "custom_accounts#destroy", as: :destroy_account
  get "/account/delete/:id" => "custom_accounts#delete", as: :delete_account

 
  
  scope "account" do 
    #resources :users 
    resources :members
    #get "profile/:uid" => "profiles#edit", as: :edit_account
  end
  #devise_for :users
  resources :permission_roles do 
    get "delete"
  end
  resources :permissions do 
    get "delete"
  end
  resources :roles do 
    get "delete"
  end

  devise_for :accounts, path: '', controllers: { 
    registrations: "accounts/registrations",
    confirmations: 'accounts/confirmations',
    passwords: "accounts/passwords",
    sessions: "accounts/sessions"
        
    }, 
    path_names: {
        sign_in: 'account/login', 
        sign_out: 'account/logout', 
        password: 'account/secret', 
        confirmation: 'account/verification', 
        unlock: 'account/unblock', 
        registration: 'account/signup', 
        sign_up: '' 
  }

  devise_scope :account do
    #root to: "users/sessions#new"
    authenticated :account do
      root 'dashboard#index', as: :authenticated_root
    end

    unauthenticated do
      root 'accounts/sessions#new', as: :unauthenticated_root
    end
  end
 
  # Dynamic error pages
  get "/404", to: "errors#not_found"
  get "/422", to: "errors#unacceptable"
  get "/500", to: "errors#internal_error"
end
