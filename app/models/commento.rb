class Commento < ActiveRecord::Base
  attr_accessible :allegato_id, :attivitum_id, :testo, :utente_id
  belongs_to :utente , :foreign_key => "utente_id"
  belongs_to :attivita , :foreign_key => "attivitum_id"       
  
  validates :testo, :presence => true,:length => { :minimum => 10}
   
end
