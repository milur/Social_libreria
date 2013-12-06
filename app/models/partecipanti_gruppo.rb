class PartecipantiGruppo < ActiveRecord::Base
  attr_accessible :gruppo_id, :utente_id
  belongs_to :gruppo
  belongs_to :utente
  
   
end
