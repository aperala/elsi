class User < ActiveRecord::Base

  has_secure_password

  validates_presence_of :password, on: :create
  validates_confirmation_of :password

  has_many :passages, dependent: :destroy
  has_many :responses, dependent: :destroy
  
  acts_as_tagger
end
