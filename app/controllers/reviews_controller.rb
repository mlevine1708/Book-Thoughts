class ReviewsController < ApplicationController

    render :new


    def create
      @review = current_user.reviews.build(review_params)
      if @review.save
        redirect_to review_path(@review)
      else
        @review.build_book unless @review.book
        render :new
      end
    end


    def review_params
      params.require(:review).permit(:title, :content, :rating)
    end 
end
