class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.text :title
      t.integer :user_id
      t.integer :share_id

      t.timestamps
    end
  end
end
