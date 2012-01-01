0.0.2
=====
* Bugfix:
 * Ensure that the symlink is created before Capistrano calls `rake assets:precompile`. Fixes a regression with Rails 3.1 applications and enabled asset pipeline.

0.0.1
=====
* creates a `database.yml` on `cap deploy:setup` for a MySQL connection
* symlink to shared `database.yml` on `cap deploy`
