class Commento < ActiveRecord::Base
  attr_accessible :allegato_id, :attivita_id, :testo, :utente_id
  
  validates :allegato_id, 
              :presence => true, 
              :uniqueness => false 
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 50}
  validates :attivita_id, 
              :presence => true, 
              :uniqueness => true 
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 50}            

  validates :testo, 
              :presence => true, 
              :uniqueness => false, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 50}
              
  validates :utente_id, 
              :presence => true, 
              :uniqueness => true 
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 50}
end
