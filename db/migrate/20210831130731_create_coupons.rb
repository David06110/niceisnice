class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.integer :price
      t.string :code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
