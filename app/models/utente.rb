class Utente < ActiveRecord::Base
  attr_accessible :anno_di_nascita, :codice_fiscale, :cognome, :email, :nome, :password_hash, :password_salt
end
