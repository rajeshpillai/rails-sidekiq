# README

- Install redis client and server

- Update gemfile with gem 'sidekiq'

- In config/application.rb add
    # Use sidekiq as background processor
    config.active_job.queue_adapter =  :sidekiq  # Rails.env.production ? :sidekiq  : :async  

- Create sidekiq.rb in config/initializers
- Run rails g job generate_random_user

# Optional  - Setup route for sidekiq/web in routes.rb

Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'


