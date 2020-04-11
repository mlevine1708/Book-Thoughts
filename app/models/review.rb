class Review < ApplicationRecord
  belongs_to :books
  belongs_to :user


  def book_title=(title)
    self.book = Book.find_or_create_by(title: title)
  end

  def book_title
    self.book ? self.book.title : nil
  end

  def user_name=(name)
    self.user = User.find_or_create_by(name: name)
  end
end
