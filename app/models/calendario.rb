class Calendario < ActiveRecord::Base
  attr_accessible :descrizione, :gruppo_id, :utente_id
end
