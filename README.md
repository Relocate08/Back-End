## About This Project:

Relocate08 provides users with the ability to enter an address in order to receive curated information for services near their new home.

Relocate08 is an application that utilizes a frontend, backend, and microservice to consume and expose API data sourced from Yelp. This backend is responsible for receiving requests from the frontend, submiting requests to the microservice which then returns API data for the backend to package and return to the frontend for viewing.

## Local Setup:

This project requires:
- Ruby 2.5.3.
- Rails 5.2.4.3

* Fork this repository
* Clone your fork
* From the command line, install gems and set up your DB:
    * `bundle install`
    * `rails db:create`
    * `rails db:migrate`
* Install Figaro with `bundle exec figaro install` to create an application.yml file locally (this to be updated with any needed ENV variables!!!)

#### Relocate-Back-End utilizes the following gems and libraries in testing:

- [RSpec](https://github.com/rspec/rspec-rails)
- [ShouldaMatchers](https://github.com/thoughtbot/shoulda-matchers)
- [Capybara](https://github.com/teamcapybara/capybara)
- [SimpleCov](https://github.com/simplecov-ruby/simplecov)

## Deployment <a name="deployment"></a>

Relocate-Back-End-Rails is deployed remotely via Heroku (https://relocate-back-end-rails.herokuapp.com/)

## Endpoints:

- `get '/:location/utilities/:type'`
- `get '/:location/recreation/:type'`
- `get '/:location/homeservices/:type'`
- `get '/businesses/:id'`

- `get /favorites/:user_id`
- `post /favorites/:user_id/:yelp_business_id (also requires "business_name" params)`
- `delete /favorites/:user_id/:yelp_business_id`

- `get /location/:user_id`
- `post /:location/:user_id`
- `patch /:location/:user_id`
- `delete /location/:user_id`

## Schema <a name="schema"></a>

<img width="667" alt="Relocate BE Schema" src="https://user-images.githubusercontent.com/63476564/104670572-19ab0700-56aa-11eb-81e0-66753a68ac4d.png">

