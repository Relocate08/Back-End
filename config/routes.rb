Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :yelp do
        get '/:location/utilities/:type', to: 'businesses_search#utilities'
      end
    end
  end
end
