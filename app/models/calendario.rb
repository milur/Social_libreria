class Calendario < ActiveRecord::Base
     has_many :condivisi
     has_many :attivita, :through => :condivisi, :class_name => "Attivitum", :foreign_key => "calendario_id"
  
     belongs_to :utente , :foreign_key => "utente_id"
     belongs_to :gruppo, :foreign_key => "gruppo_id"
  
  
     attr_accessible :descrizione, :gruppo_id, :utente_id
     validates :descrizione,:presence => true, :length => {:minimum => 10}
  
                                     
end
