class CreatePartecipantes < ActiveRecord::Migration
  def change
    create_table :partecipantes do |t|
      t.integer :conversazione_id
      t.integer :utente_id

      t.timestamps
    end
  end
end
