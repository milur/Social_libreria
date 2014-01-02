SocialLibreria1::Application.routes.draw do
  get "logout" => "session#destroy", :as => "logout"
  get "login" => "session#new", :as => "login"
  get "sign_up" => "utenti#new", :as => "sign_up"
  post "session/create"
  
  get 'gruppi/adding_group/:gruppo_id', to: 'gruppi#adding_group', as: :gruppo_id
  get 'gruppi/lista_utenti/:gruppo_id', to: 'gruppi#listing_utenti', as: :gruppo_id
  get 'gruppi/data/:date', to: 'calendari#index', as: :date
  
  resources :commenti
  resources :attivita
  resources :messaggi
  resources :partecipantes
  resources :conversazioni
  resources :partecipanti_gruppi
  resources :condivisi
  resources :utenti
  resources :gruppi
  resources :calendari



  root :to => 'gruppi#index'

end
