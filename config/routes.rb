Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      namespace :yelp do
        get '/:location/utilities/:type', to: 'businesses_search#utilities'
      end
    end
  end
end
