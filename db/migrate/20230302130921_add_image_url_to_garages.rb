class AddImageUrlToGarages < ActiveRecord::Migration[7.0]
  def change
    add_column :garages, :image_url, :string
  end
end
