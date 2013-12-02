class CreateGruppi < ActiveRecord::Migration
  def change
    create_table :gruppi do |t|
      t.string :nome
      t.text :manifesto
      t.integer :libro_id
      t.string :classe
      t.integer :scuola_id

      t.timestamps
    end
  end
end
