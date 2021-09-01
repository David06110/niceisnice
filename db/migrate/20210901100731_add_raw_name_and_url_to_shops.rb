class AddRawNameAndUrlToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :raw_name, :string
    add_column :shops, :url, :string
  end
end
