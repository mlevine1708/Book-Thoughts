class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.belong_to :user
      t.belongs_to :books, null: false, foreign_key: true

      t.timestamps
    end
  end
end
