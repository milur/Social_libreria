class Commento < ActiveRecord::Base
  attr_accessible :allegato_id, :attivita_id, :testo, :utente_id
end
