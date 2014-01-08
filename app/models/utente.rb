

class Utente < ActiveRecord::Base
  has_many :partecipanti_gruppi
  has_many :gruppi ,:through => :partecipanti_gruppi
  has_many :commenti , :dependent => :destroy
  has_many :attivita, :dependent => :destroy
  has_many :messaggi
  has_many :conversazioni ,:through => :partecipante
  belongs_to :calendario
  before_save :date_store
  before_save :encrypt_password
  attr_accessible :month, :day, :year, :codice_fiscale, :cognome, :email, :nome,:password,:password_confirmation, :image
  mount_uploader :image, ImageUploader
  attr_accessor :month, :day, :year ,:password
  validates :password, :presence => true,:confirmation => true
  validates :codice_fiscale,:uniqueness => true #format codice fiscale
  validates :cognome,:presence => true, :length => {:minimum =>3 ,:maximum =>20 }
  validates :nome,:presence => true, :length => {:minimum =>3 ,:maximum =>20 }
  validates :email , :uniqueness => true #format mail
  
  
  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  
  private
  def date_store
   self.anno_di_nascita = Date.new(self.year.to_i,self.month.to_i,self.day.to_i)
  end
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end

