class Partecipante < ActiveRecord::Base
  attr_accessible :conversazione_id, :utente_id
  belongs_to :conversazione
  belongs_to :utente
end
