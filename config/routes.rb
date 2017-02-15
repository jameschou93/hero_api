Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/heroes', to: 'heroes#index'
      get '/heroes/:id', to: 'heroes#show'
      post '/heroes', to: 'heroes#create'
    end

    namespace :v2 do
      get '/heroes', to: 'heroes#index'
      get '/heroes/:id', to: 'heroes#show'
      post '/heroes', to: 'heroes#create'
      get '/heroes/:id', to: 'heroes#edit'
      patch '/heroes/:id', to: 'heroes#update'
      delete '/heroes/:id', to: 'heroes#destroy'

    end
  end
end
