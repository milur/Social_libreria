class Attivitum < ActiveRecord::Base
    has_many :condivisi
    has_many :calendari, :through => :condivisi
    
    belongs_to :utente, :foreign_key => "utente_id"
    has_many :commenti, :dependent => :destroy
   
    attr_accessible :allegato_id, :descrizione, :data , :utente_id, :condividi, :image
    attr_accessor :condividi
    mount_uploader :image, ImageUploader
  
    validates :descrizione, :presence => true
end 
