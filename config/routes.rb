SocialLibreria1::Application.routes.draw do
  get "logout" => "session#destroy", :as => "logout"
  get "login" => "session#new", :as => "login"
  get "sign_up" => "utenti#new", :as => "sign_up"
  post "session/create"
  
  resources :commenti
  resources :attivita
  resources :messaggi
  resources :partecipantes
  resources :conversazioni
  resources :partecipanti_gruppi
  resources :utenti
  resources :gruppi
  resources :calendari



  root :to => 'gruppi#index'

end
