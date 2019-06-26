require 'pry'
require 'nokogiri'
require 'open-uri'
require 'sinatra'

def scraper

  output = {}

  doc = Nokogiri::HTML(open("https://www.uniqlo.com/us/en/men/sale"))
  product_tile = doc.css("div.product-tile-info")

  product_tile.each do |product|
    
    item_name = product.css("div.product-name a[title]").text
    std_price = product.css("div.product-pricing span.product-standard-price").text
    sales_price = product.css("div.product-pricing span.product-sales-price").text
    
    output[item_name.to_sym] = {
      :std_price => std_price,
      :sales_price => sales_price
    }
  end

  output

end

# for terminal viewing output
# puts scraper

get '/' do
  erb :index
end

get('/scraper') do
  @data = scraper
  erb :scrap
end