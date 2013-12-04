class Calendario < ActiveRecord::Base
  attr_accessible :descrizione, :gruppo_id, :utente_id
    
    validates :descrizione, 
              :presence => true, 
              :uniqueness => false, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 50}
              
    validates :gruppo_id, 
              :presence => true, 
              :uniqueness => true, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 5}
              
    validates :utente_id, 
              :presence => true, 
              :uniqueness => true, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 5}
                                     
end
