# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Bonuscalc::Application.routes.draw do


  # Resource routes for controller bonus_finals
  resources :bonus_finals


  # Resource routes for controller monthly_process_schedules
  resources :monthly_process_schedules, :only => [:index, :show]


  # Resource routes for controller penalty_overrides
  resources :penalty_overrides


  # Resource routes for controller process_windows
  resources :process_windows


  # Resource routes for controller users
  resources :users, :only => [:edit, :show, :create, :update, :destroy] do
    collection do
      post 'signup', :action => 'do_signup'
      get 'signup'
    end
    member do
      get 'account'
      put 'reset_password', :action => 'do_reset_password'
      get 'reset_password'
    end
  end

  # User routes for controller users
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'

end
