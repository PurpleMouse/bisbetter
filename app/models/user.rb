class User < ActiveRecord::Base
  attr_accessor :password_hash
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :first_name, :presence => true, :length => { :in => 3..25 }
  validates :last_name, :presence => true, :length => { :in => 3..25 }
  #validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validate :phone_number, :presence => true, :length => { :in => 10..11 }
  validates :password_hash, :confirmation => true #password_confirmation attr
  validates_length_of :password_hash, :in => 8..32, :on => :create
end
