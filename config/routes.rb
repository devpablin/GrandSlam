Rails.application.routes.draw do
  resources :pmplaces
  resources :pmcountries
  resources :pmnationalities
  resources :pmmatches
  resources :pmrounds
  resources :pmtournaments
  resources :pmcourts
  resources :pmtrainers
  resources :pmplayers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
