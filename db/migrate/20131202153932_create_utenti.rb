class CreateUtenti < ActiveRecord::Migration
  def change
    create_table :utenti do |t|
      t.string :nome
      t.string :cognome
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.string :codice_fiscale
      t.date :anno_di_nascita

      t.timestamps
    end
  end
end
