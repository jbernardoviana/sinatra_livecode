require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
# require "byebug"


# As a user I can list all the restaurants
# As a user I can see one restaurant's details
# As a user I can add a restaurant

get "/restaurants" do
  @restaurants = Restaurant.all

  erb :restaurants
end

get "/restaurants/:id" do
  id = params["id"].to_i
  @restaurant = Restaurant.find(id)

  erb :show
end

post "/restaurant" do
  puts params # {"restaurant_name"=>"HOWGWARTS"}

  new_restaurant = Restaurant.new(
    name: params["restaurant_name"],
    address: params["restaurant_add"]
    )
  new_restaurant.save

  redirect "/restaurants"
end









