class Utente < ActiveRecord::Base
  attr_accessible :anno_di_nascita, :codice_fiscale, :cognome, :email, :nome, :password_hash, :password_salt
  validates :anno_di_nascita, 
              :presence => true, 
              :uniqueness => true, 
              #:format => { :with => "gg-mese-anno" }
              :lenngth => { :minimum => 5}
  
validates :codice_fiscale, 
              :presence => true, 
              :uniqueness => true, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 16, :maximum =>16}
              
validates :cognome, 
              :presence => true, 
              :uniqueness => false, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 5}              

validates :email,
              :presence => true, 
              :uniqueness => true, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 5}

validates :nome, 
              :presence => true, 
              :uniqueness => true, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 5}

validates :password_hash, 
              :presence => true, 
              :uniqueness => true, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 10}

validates :password_salt, 
              :presence => true, 
              :uniqueness => true, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 10}
end
