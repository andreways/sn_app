class SpotsController < ApplicationController
  def create
    @spot = Spot.new(spot_params)

    if @spot.save
      render json: @spot, status: :created
    else
      render json: @spot.errors, status: :unprocessable_entity
    end
  end

  def index
    @spots = Spot.all.order(sort_param)

    render json: @spots
  end

  def show
    @spot = Spot.find(params[:id])

    render json: @spot
  end

  def update
    @spot = Spot.find(params[:id])

    if @spot.update(spot_params)
      render json: @spot
    else
      render json: @spot.errors, status: :unprocessable_entity
    end
  end

  private

  def spot_params
    params.require(:spot).permit(:title, :description, :price, spot_images_attributes: [:id, :file, :_destroy, :main])
  end

  def sort_param
    case params[:sort]
    when 'price_asc' then 'price ASC'
    when 'price_desc' then 'price DESC'
    else 'created_at DESC'
    end
  end
end
