Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :yelp do
        get '/:location/utilities/:type', to: 'businesses_search#utilities'
        get '/:location/recreation/:type', to: 'businesses_search#recreation'
        get '/businesses/:yelp_business_id', to: 'businesses_search#find_business'
      end

      namespace :favorites do
        get '/:user_id', to: 'favorites#index'
        post '/:user_id/:yelp_business_id', to: 'favorites#create'
        delete '/:user_id/:yelp_business_id', to: 'favorites#destroy'
      end

      get '/location/:user_id', to: 'location#show'
      post '/:location/:user_id', to: 'location#create'
    end
  end
end
