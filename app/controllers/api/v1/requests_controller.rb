class Api::V1::RequestsController < ApplicationController

  def index
    @request = Request.where() 
    render :json => @request, each_serializer: RequestSerializer
  end

  def create
    @request = Review.new(request_params)
    if @request.save
      render json: @request
    else
      render json: { errors: @request.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @request = Request.find(params[:id])
    render :json => @request, each_serializer: RequestSerializer
  end

  def destroy
    @request.destroy
    head :ok
  end
end
