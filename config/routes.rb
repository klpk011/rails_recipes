Rails.application.routes.draw do
  devise_for :users

  resources :events do
    resources :registrations do
      member do
        get "step/2" => "registations#step2", :as => :step2
        patch "steps/2/update" => "registrations#step2_update", :as => :update_step2
        get "step/3" => "registrations#step3", :as => :step3
        patch "steps/3/update" => "registrations#step3_update", :as => :update_step3
      end
    end
  end

  resource :user

  namespace :admin do
    root 'events#index'
    resources :events do
      resources :tickets, controller: 'event_tickets'
      collection do
        post :bulk_update
      end

      member do
        post :reorder
      end
    end
    resources :users do
      resource :profile, controller: 'user_profiles'
    end
  end

  root 'events#index'

  get '/faq' => 'pages#faq'
end
