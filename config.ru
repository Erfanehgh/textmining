# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application


#module Gui
#  class Application < Rails::Application
 #   config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
 # end
#end
