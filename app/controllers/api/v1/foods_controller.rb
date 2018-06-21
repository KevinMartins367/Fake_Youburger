class Api::V1::FoodsController < ApplicationController
  def index
    @food = Food
    .joins(:category)
    .select("foods.id, foods.title, foods.description, foods.quantity, foods.price, foods.thumbnail_key, categories.name as categories")
    .where()
    
    render :json => @food, each_serializer: FoodSerializer
  end
end