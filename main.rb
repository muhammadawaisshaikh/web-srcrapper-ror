require 'pry'
require 'nokogiri'
require 'open-uri'
require 'sinatra'

# controllers
require './controllers/scrap'
require './controllers/amazon'

get '/' do
  erb :index
end