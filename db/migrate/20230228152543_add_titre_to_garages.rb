class AddTitreToGarages < ActiveRecord::Migration[7.0]
  def change
    add_column :garages, :titre, :string
  end
end
