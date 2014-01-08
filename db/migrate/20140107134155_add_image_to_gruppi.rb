class AddImageToGruppi < ActiveRecord::Migration
  def change
    add_column :gruppi, :image, :string
  end
end
