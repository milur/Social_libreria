class Attivitum < ActiveRecord::Base
  attr_accessible :allegato_id, :calendario_id, :descrizione, :utente_id

    validates :allegato_id, 
              :presence => true
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 50}
              
    validates :calendario_id, 
              :presence => true     
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 5}
              
    validates :descrizione, 
              :presence => true, 
              :uniqueness => false, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 50}
    
    validates :utente_id, 
              :presence => true,
              :uniqueness => true
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 5}                
end 
