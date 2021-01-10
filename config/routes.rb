Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :yelp do
        get '/:location/utilities/:type', to: 'businesses_search#utilities'
        get '/businesses/:yelp_business_id', to: 'businesses_search#find'
      end

      namespace :favorites do
        get '/:user_id', to: 'favorites#index'
        post '/:user_id/:yelp_business_id', to: 'favorites#create'
        delete '/:user_id/:yelp_business_id', to: 'favorites#destroy'
      end
    end
  end
end
