class Messaggio < ActiveRecord::Base
  attr_accessible :allegato_id, :conversazione_id, :testo, :utente_id
  belongs_to :utente
  belongs_to :conversazione  
  validates   :allegato_id, 
              :presence => true 
              #:uniqueness => false 
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 50}
  validates :conversazione_id, 
              :presence => true 
              #:uniqueness => false, 
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              #:lenngth => { :minimum => 50}            

  validates :testo, 
              :presence => true, 
              :uniqueness => false, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 50}
              
  validates :utente_id, 
              :presence => true, 
              #:uniqueness => true 
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 50}

end
