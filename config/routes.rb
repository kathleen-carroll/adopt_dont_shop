Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/', to: 'welcome#index'
# resources :leads, path: ''
get '/shelters', to: 'shelters#index'
get '/shelters/new', to: 'shelters#new'
post '/shelters', to: 'shelters#create'
get '/shelters/:id', to: 'shelters#show'
get '/shelters/:id/edit', to: 'shelters#edit'
patch '/shelters/:id', to: 'shelters#update'
delete '/shelters/:id', to: 'shelters#destroy'

get '/pets', to: 'pets#index'
get '/shelters/:shelter_id/pets', to: 'pets#pets'
get '/pets/:id', to: 'pets#show'
get '/shelters/:shelter_id/pets/new', to: 'pets#new'
post '/shelters/pets', to: 'pets#create' #this needs to be :id or :shelter_id
end
