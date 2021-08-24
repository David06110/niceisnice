class CreateCashbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :cashbacks do |t|
      t.decimal :cachback_amount
      t.references :user, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
