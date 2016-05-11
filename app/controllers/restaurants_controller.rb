class RestaurantsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
        @ratings = Rating.all
  end

  def signup
  end

  def login
  end

  def add_restaurant
    @restaurant = Rating.new
    @restaurant.userid="1"
    @restaurant.restid=params[:restid]
    @restaurant.rating=params[:rating]
    @restaurant.save
    redirect_to("/restaurants")
  end

  def delete_rating
    @restaurant=Rating.find(params[:id])
    @restaurant.destroy
    @restaurant.save
    redirect_to("/restaurants")
  end

  def restaurants
    @ratings = Rating.all
  end

end
