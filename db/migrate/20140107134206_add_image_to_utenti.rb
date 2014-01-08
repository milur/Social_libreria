class AddImageToUtenti < ActiveRecord::Migration
  def change
    add_column :utenti, :image, :string
  end
end
