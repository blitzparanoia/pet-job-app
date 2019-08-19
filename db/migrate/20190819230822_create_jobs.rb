class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :position
      t.string :description
      t.integer :user_id
      t.integer :company_id

      t.timestamps
    end
  end
end
