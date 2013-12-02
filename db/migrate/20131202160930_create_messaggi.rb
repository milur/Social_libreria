class CreateMessaggi < ActiveRecord::Migration
  def change
    create_table :messaggi do |t|
      t.text :testo
      t.integer :allegato_id
      t.integer :utente_id
      t.integer :conversazione_id

      t.timestamps
    end
  end
end
