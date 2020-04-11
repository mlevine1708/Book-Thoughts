class Books < ApplicationRecord
    belongs_to :author
    has_many :reviews, through: :users
end

