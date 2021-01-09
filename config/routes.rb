Rails.application.routes.draw do
  get '/pets', to: 'pets#index'

  get '/pets/new', to: 'pets#new', as: :new_pets
  post '/pets', to: 'pets#create'

  get '/pets/:id', to: 'pets#show', as: :pet

  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pets
  patch '/pets/:id', to: 'pets#update'

  delete '/pets/:id', to: 'pets#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
