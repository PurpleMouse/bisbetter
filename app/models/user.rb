class User < ActiveRecord::Base
  #attr_accessor :password_hash
  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :first_name, :presence => true, :length => { :in => 3..25 }
  validates :last_name, :presence => true, :length => { :in => 3..25 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validate :phone_number, :presence => true, :length => { :in => 10..11 }
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 8..32, :on => :create
end
