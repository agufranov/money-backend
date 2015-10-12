class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.string :name, null: false

      t.integer :user_id, index: true, null: false

      t.timestamps null: false
    end

    add_foreign_key :wallets, :users
  end
end
