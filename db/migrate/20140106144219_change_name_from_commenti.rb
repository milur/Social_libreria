class ChangeNameFromCommenti < ActiveRecord::Migration
  def up
    rename_column :commenti, :attivita_id, :attivitum_id
  end

  def down
  end
end
