class CreateBookReviews < ActiveRecord::Migration[4.2]
  def change
    create_table :book_reviews do |t|
      t.string :title
      t.text :content
      t.integer :rating
      t.integer :book_id
      t.integer :user_id


      t.timestamps
    end
  end
end
