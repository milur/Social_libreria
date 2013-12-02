class CreatePartecipantiGruppi < ActiveRecord::Migration
  def change
    create_table :partecipanti_gruppi do |t|
      t.integer :utente_id
      t.integer :gruppo_id

      t.timestamps
    end
  end
end
