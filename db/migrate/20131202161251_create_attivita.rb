class CreateAttivita < ActiveRecord::Migration
  def change
    create_table :attivita do |t|
      t.text :descrizione
      t.integer :allegato_id
      t.integer :utente_id
      t.integer :calendario_id

      t.timestamps
    end
  end
end
