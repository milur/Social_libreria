class Calendario < ActiveRecord::Base
  belongs_to :utente
  belongs_to :gruppo
  attr_accessible :descrizione, :gruppo_id, :utente_id
  validates :descrizione,:presence => true, :length => {:minimum => 10}
  
                                     
end
