require "rubygems"
require "bundler"

Bundler.require

if Rack::Utils.respond_to?("key_space_limit=")
  Rack::Utils.key_space_limit = 999999999999 
end

require "./app"
run Sinatra::Application
