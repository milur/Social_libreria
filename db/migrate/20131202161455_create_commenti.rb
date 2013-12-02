class CreateCommenti < ActiveRecord::Migration
  def change
    create_table :commenti do |t|
      t.text :testo
      t.integer :allegato_id
      t.integer :utente_id
      t.integer :attivita_id

      t.timestamps
    end
  end
end
