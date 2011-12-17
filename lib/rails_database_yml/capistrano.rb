Capistrano::Configuration.instance(:must_exist).load do
  namespace :rails_database do
    # Creates a database.yml in shared/config path
    task :setup do
      template = <<-EOF
production:
  adapter: mysql
  encoding: utf8
  reconnect: false
  pool: 5
  host: #{Capistrano::CLI.ui.ask("host: ")}
  database: #{Capistrano::CLI.ui.ask("database: ")}
  username: #{Capistrano::CLI.ui.ask("user: ")}
  password: #{Capistrano::CLI.ui.ask("password: ")}
EOF
      Capistrano::CLI.ui.say("Please specify the settings for your MySQL Database")
      config = ERB.new(template)

      run "mkdir -p #{shared_path}/config"
      put config.result(binding), "#{shared_path}/config/database.yml"
    end

    # Create a symlink to shared database.yml
    task :symlink do
      run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    end
  end
  after "deploy:setup", "rails_database:setup"
  after "deploy:update_code", "rails_database:symlink"
end
