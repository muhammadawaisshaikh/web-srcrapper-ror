require 'pry'
require 'nokogiri'
require 'open-uri'
require 'sinatra'

require './controllers/scrap'

get '/' do
  erb :index
end