class CreateCondivisi < ActiveRecord::Migration
  def change
    create_table :condivisi do |t|
      t.integer :calendario_id
      t.integer :attivita_id

      t.timestamps
    end
  end
end
