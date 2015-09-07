class User < ActiveRecord::Base

  has_secure_password
  
  has_many :passages, dependent: :destroy
  has_many :responses, dependent: :destroy
  
  acts_as_tagger
end
