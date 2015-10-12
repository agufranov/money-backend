class CreateFlows < ActiveRecord::Migration
  def change
    create_table :flows do |t|
      t.integer :sum, null: false
      t.string :comment

      t.integer :type_id, index: true, null: false
      t.integer :from_id, index: true, null: false
      t.integer :to_id, index: true

      t.timestamps null: false
    end

    add_foreign_key :flows, :types
    add_foreign_key :flows, :wallets, column: :from_id
    add_foreign_key :flows, :wallets, column: :to_id
  end
end
