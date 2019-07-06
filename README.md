# web-srcrapper-ror

# creating new app
rails new web-srcrapper-ror

# adding GEMS
gem "nokogiri"
gem "pry"

# show responce in terminal by typing:
ruby main.rb

# refrence
https://medium.com/@jonwu_/scraping-with-nokogiri-without-blowing-your-brains-out-da3137082370

# gem 'sinatra'
Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort

# passing data to view 
<% @data.each do |item| %>
  <p><%= item %></p>
<% end %>

# starting sinatra server
ruby main.rb