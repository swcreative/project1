class CreateNotesShares < ActiveRecord::Migration[6.0]
  def change
    create_table :notes_shares, :id => false do |t|
      t.integer :note_id
      t.integer :share_id
    end
  end
end
