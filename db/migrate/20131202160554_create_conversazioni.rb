class CreateConversazioni < ActiveRecord::Migration
  def change
    create_table :conversazioni do |t|
      t.text :descrizione

      t.timestamps
    end
  end
end
