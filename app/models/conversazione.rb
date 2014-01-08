class Conversazione < ActiveRecord::Base
  attr_accessible :descrizione
  has_many :messaggi
end
