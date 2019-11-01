class CreateListsNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :lists_notes, :id => false do |t|
      t.integer :list_id
      t.integer :note_id
    end
  end
end
