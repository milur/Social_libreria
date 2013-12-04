class PartecipantiGruppo < ActiveRecord::Base
  attr_accessible :gruppo_id, :utente_id
  
  validates :gruppo_id, 
              :presence => true, 
              :uniqueness => true 
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 50}
                          
  validates :utente_id, 
              :presence => true, 
              :uniqueness => true, 
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 50}
   
end
