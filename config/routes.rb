Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :yelp do
        get '/:location/utilities/:type', to: 'businesses_search#utilities'
        get '/:location/recreation/:type', to: 'businesses_search#recreation'
        get '/:location/homeservices/:type', to: 'businesses_search#homeservices'
      end

      namespace :favorites do
        get '/:user_id', to: 'favorites#index'
        post '/:user_id/:yelp_business_id', to: 'favorites#create'
        delete '/:user_id/:yelp_business_id', to: 'favorites#destroy'
      end

      get '/location/:user_id', to: 'location#show'
      post '/:location/:user_id', to: 'location#create'
      patch '/:location/:user_id', to: 'location#update'
      delete '/location/:user_id', to: 'location#destroy'
    end
  end
end
