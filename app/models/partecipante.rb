class Partecipante < ActiveRecord::Base
  attr_accessible :conversazione_id, :utente_id
  
  validates :conversazione_id,
              :presence => true, 
              :uniqueness => true 
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 50}
  
  validates   :utente_id,
              :presence => true, 
              :uniqueness => true 
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 5}
end
