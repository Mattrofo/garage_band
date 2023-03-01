class AddDescritpionToGarages < ActiveRecord::Migration[7.0]
  def change
    add_column :garages, :description, :text
  end
end
