class Messaggio < ActiveRecord::Base
  attr_accessible :allegato_id, :conversazione_id, :testo, :utente_id
end
