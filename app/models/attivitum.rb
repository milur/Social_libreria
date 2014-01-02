class Attivitum < ActiveRecord::Base
    has_many :condivisi
    has_many :calendari, :through => :condivisi
    
    belongs_to :utente, :foreign_key => "utente_id"
    has_many :commenti
   
    attr_accessible :allegato_id, :descrizione, :data , :utente_id, :condividi
    attr_accessor :condividi
  
    validates :descrizione, :presence => true
end 
