class AddDataToAttivitum < ActiveRecord::Migration
  def change
    add_column :attivita, :data, :date
  end
end
