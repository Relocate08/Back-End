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

## Schema <a name="schema"></a>

- Table: Locations
  * location:string
  * user_id:integer
- Table: Favorites
  * user_id:integer
  * yelp_business_id:string
  * business_name:string
