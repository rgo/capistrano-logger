require 'capistrano'

module Capistrano
  module Speak
    def self.load_into(configuration)
      configuration.load do
        task :speak do
          set :message, 'oh hai'
          puts message
        end
      end
    end
  end
end

# may as well load it if we have it
if Capistrano::Configuration.instance
  Capistrano::Speak.load_into(Capistrano::Configuration.instance)
end
