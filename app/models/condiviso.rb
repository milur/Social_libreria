class Condiviso < ActiveRecord::Base
  attr_accessible :attivitum_id, :calendario_id
  
  belongs_to :attivita, :foreign_key => "attivitum_id"
  belongs_to :calendario, :foreign_key => "calendario_id"
  
end
