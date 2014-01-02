class RemoveCalendarioIdFromAttivita < ActiveRecord::Migration
  def up
    remove_column :attivita, :calendario_id
  end

  def down
    add_column :attivita, :calendario_id, :integer
  end
end
