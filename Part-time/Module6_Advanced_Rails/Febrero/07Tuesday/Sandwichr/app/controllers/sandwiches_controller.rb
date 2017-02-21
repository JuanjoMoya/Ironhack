class SandwichesController < ApplicationController
  before_action :find_sandwich

  def index
    sandwiches = Sandwich.all
    render json: sandwiches
  end

  def create
    sandwich = Sandwich.create(sandwich_params)
    render json: sandwich
  end

  def show
    unless @sandwich
      sandwich_not_found
      return
    end

    render json: @sandwich
  end

  def update
    unless @sandwich
      sandwich_not_found
      return
    end

    @sandwich.update(sandwich_params)
    render json: @sandwich
  end

  def destroy
    unless @sandwich
      sandwich_not_found
      return
    end

    @sandwich.destroy
    render json: @sandwich
  end

  private

  def sandwich_params
    params.permit(:name, :bread_type)
  end

  def find_sandwich
    @sandwich = Sandwich.find_by(id: params[:id])
  end

  def sandwich_not_found
    render json: {error: "sandwich not found"}, status: 404
  end
end
