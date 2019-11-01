class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.text :code
      t.float :current_price
      t.float :buy_price
      t.float :sell_price

      t.timestamps
    end
  end
end
