class Commento < ActiveRecord::Base
  attr_accessible :allegato_id, :attivita_id, :testo, :utente_id
  belongs_to :utente
  belongs_to :attivita        
  
  validates :testo, :presence => true,:length => { :minimum => 10}
   
end
