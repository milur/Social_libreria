class Gruppo < ActiveRecord::Base
  attr_accessible :classe, :libro_id, :manifesto, :nome, :scuola_id
end
