class CreateListsShares < ActiveRecord::Migration[6.0]
  def change
    create_table :lists_shares, :id => false do |t|
      t.integer :list_id
      t.integer :share_id
    end
  end
end
