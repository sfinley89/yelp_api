require 'sinatra'
require 'httparty'

get '/' do
  @events = HTTParty.get "http://mashable.com/stories.json"
  erb :index
end