class User < ActiveRecord::Base
  #attr_accessor :password_hash
  has_secure_password
  #validates_confirmation_of :password
  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :first_name, :presence => true, :length => { :in => 3..25 }
  validates :last_name, :presence => true, :length => { :in => 3..25 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validate :phone_number, :presence => true, :length => { :in => 10..11 }
  validates :password, :presence => true, :length => { :in => 8..32 }

end
