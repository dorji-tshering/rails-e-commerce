Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: "users/confirmations",
                                    passwords: "users/passwords",
                                    registrations: "users/registrations",
                                    sessions: "users/sessions",
                                    unlocks: "users/unlocks",
                                    omniauth: "users/omniauth" }
  resources :profiles
  resources :fastorders
  resources :orders
  root 'photos#index'
  get 'photos/hoodie'
  get 'photos/tv'
  get 'photos/iphone'
  get 'photos/shoe'
  get 'photos/cream'
  get 'photos/speaker'

end
