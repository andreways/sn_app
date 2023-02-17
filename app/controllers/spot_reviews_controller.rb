class SpotReviewsController < ApplicationController
  before_action :set_spot_review, only: [:update]

  def create
    @spot = Spot.find(params[:spot_id])
    @review = @spot.spot_reviews.new(spot_review_params)

    if @review.save
      render json: { message: 'Review created successfully' }, status: :created
    else
      render json: { error: 'Unable to create review' }, status: :unprocessable_entity
    end
  end

  def update
    if @spot_review.update(spot_review_params)
      render json: { message: 'Review updated successfully' }, status: :ok
    else
      render json: { error: 'Unable to update review' }, status: :unprocessable_entity
    end
  end

  private

  def set_spot_review
    @spot_review = SpotReview.find(params[:id])
  end

  def spot_review_params
    params.require(:spot_review).permit(:content)
  end
end

