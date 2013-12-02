class CreateCalendari < ActiveRecord::Migration
  def change
    create_table :calendari do |t|
      t.text :descrizione
      t.integer :utente_id
      t.integer :gruppo_id

      t.timestamps
    end
  end
end
