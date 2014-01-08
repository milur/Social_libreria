class AddImageToAttivita < ActiveRecord::Migration
  def change
    add_column :attivita, :image, :string
  end
end
