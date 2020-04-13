class Books < ApplicationRecord
    belongs_to :author
    has_many :book_reviews
    has_many :users, through: :book_reviews
end

