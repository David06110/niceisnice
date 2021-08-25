class AddAmountToCashbacks < ActiveRecord::Migration[6.0]
  def change
    add_column :cashbacks, :amount, :decimal
  end
end
