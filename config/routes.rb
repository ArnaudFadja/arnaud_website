Rails.application.routes.draw do
  resources :theses
  resources :talks
  resources :teachings
  resources :researches
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    resources :protagonists
    get 'authors/new'
    get 'authors/destroy'
    #devise_for :users, controllers: { registration: 'registration' }
    devise_for :users, controllers: {
        sessions: 'users/sessions'
    }
    resource :users, only: [:edit] do
      #collection do
      patch 'update_password'
      #end
    end
    get 'welcome/index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :articles do
      resources :comments
      put 'addAuthor', on: :collection
      delete 'removeAuthor', on: :collection
      get 'listUsers', on: :collection
      delete 'removeUser', on: :collection
      put 'setRole', on: :collection
      delete 'removeRole', on: :collection
    end
    resources :authors
    resources :password_resets

      root 'articles#index'
      #  root 'welcome#index'
  end
end
