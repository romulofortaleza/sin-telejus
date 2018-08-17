Myapp::Application.routes.draw do

  resources :upper_components
  resources :registries
  resources :component_courts
  resources :address_organs
  resources :rooms
  resources :judgeauxes
  resources :sticks
  resources :townships
  resources :duties
  get "duties/file/:id" => "duties#file"

  get "activity_roles/activities/list-not" => "activity_roles#list_not"

  devise_for :users, :controllers => {registrations: "registrations"}

  resources :activities
  resources :roles
  resources :users
  resources :activity_roles

  #Plantão/Mutirões
  get "orderly/plantaojud"

  #Fermoju
  get "fermoju/costs"
  get "fermoju/dae"
  get "fermoju/guiaparc"

  #Sistemas
  get "system/bpmex"
  get "system/saj1grau"
  get "system/saj2grau"
  get "system/pje1grau"
  get "system/pje2grau"
  get "system/sbje"
  get "system/sproc"
  get "system/projudi"
  get "system/dje"
  get "system/cpa"
  get "system/mandados"
  get "system/locserv"

  #Light/Links
  get "light/judged"
  get "light/county"
  get "light/fcbintranet"
  get "light/tjintranet"
  get "light/tjceportal"

  get "home/index"
  get "home/minor"

  get "home/custod"

  root to: "home#index"
end
