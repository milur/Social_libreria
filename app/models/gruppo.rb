class Gruppo < ActiveRecord::Base
  attr_accessible :classe, :libro_id, :manifesto, :nome, :scuola_id
  
  validates :classe, 
              :presence => true, 
              :uniqueness => true, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 10}
              
  validates :libro_id, 
              :presence => true, 
              :uniqueness => true #metto vero perchè uno studente ha un suo libro con id_unico 
              #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
              #:lenngth => { :minimum => 5} 
  
  validates :manifesto, 
              :presence => true, 
              :uniqueness => true, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 50}
  
  validates :nome, 
              :presence => true, 
              :uniqueness => true, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 5}
                                                 
  validates :scuola_id, 
              :presence => true, 
              :uniqueness => true, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 5}
end
