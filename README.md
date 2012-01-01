Rails database.yml tasks for Deployment with Capistrano
=======================================================

This gem provide some Capistrano tasks to handle a database.yml file dynamically on the deployment server.

As you now, it is a bad idea to check the database credentials into the source control for security reasons.

So this gem provides a way to create and handle a shared `database.yml` file for you on your deployment servers.
With this gem you don't need anymore to checkin a `database.yml` file with all the secrets of your database servers.

Usage
=====

Add the gem to your Rails 3 Project that uses Bundler

    gem "rails_database_yml"

Use Bundler to install the gem

    bundle install

Require the capistrano tasks in your config/deployment.rb

    require "rails_database_yml/capistrano"

That's all.

How it works
============

This gem asks you in `cap deploy:setup` for all necessery parameters for your database connection.
Afters this it creates a `database.yml` file in the folder `shared/config`.

On every `cap deploy` the gem creates a symlink to the shared `database.yml` under `current/config`.
So your rails application has always a database.yml file that is always the same between all deployments.