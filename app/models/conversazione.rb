class Conversazione < ActiveRecord::Base
  attr_accessible :descrizione
  
  validates :descrizione, 
              :presence => true, 
              :uniqueness => false, 
              :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
              :lenngth => { :minimum => 50}
end
