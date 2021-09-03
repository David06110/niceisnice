class ChangeColumnToDecimalFromCoupons < ActiveRecord::Migration[6.0]
  def change
    change_column :coupons, :price, :decimal, precision: 5, scale: 2
  end
end
