class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.integer :company_id
      t.integer :reviewer_id

      t.timestamps
    end
  end
end
