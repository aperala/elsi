class Passage < ActiveRecord::Base

 validates :user, presence: true
 
 belongs_to :user
 has_many :responses, dependent: :destroy
 
 acts_as_taggable
end
