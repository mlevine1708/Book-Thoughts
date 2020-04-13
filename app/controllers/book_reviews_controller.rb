class BookReviewsController < ApplicationController

    def new
        if params[:book_id] && book = Book.find_by_id(params[:book_id])
            @book = book.book_reviews.build
        else
            @book_review = Book_review.new
            @book_review.build_book
        end
    end

    def create
        @book_review = current_user.book_reviews.build(book_review_params)
        if @book_review.save
            redirect_to book_path(@book_review)
        else
            @book_review.build_book unless @book_review.book
            render :new
        end
    end
