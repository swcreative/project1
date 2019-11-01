class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :title
      t.date :note_date
      t.text :post
      t.integer :share_id
      t.integer :user_id

      t.timestamps
    end
  end
end
