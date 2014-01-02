class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :condivisi, :attivita_id, :attivitum_id
  end

  def down
  end
end
