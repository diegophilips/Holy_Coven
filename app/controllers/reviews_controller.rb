class ReviewsController < ApplicationController
  def new
    @reviewer = current_user
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @user = User.find(params[:user_id])
    @review.user = @user
    @review.reviewer_id = current_user.id
    @review.save
    redirect_to user_path(@user)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
