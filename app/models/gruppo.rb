class Gruppo < ActiveRecord::Base
  has_many :partecipanti_gruppi
  has_many :utenti , :through => :partecipanti_gruppi
  belongs_to :calendario 
  
  attr_accessible :classe, :libro_id, :manifesto, :nome, :scuola_id, :image
  mount_uploader :image, ImageUploader
  validates :classe, :presence => true, :length  => {:minimum => 5},:uniqueness => true  # ?
  validates :manifesto ,:presence => true, :length  => {:minimum => 15}
  validates :nome, :presence => true, :length  => {:minimum => 5},:uniqueness => true
end
