class Passage < ActiveRecord::Base

 validates_presence_of :user
 validates_presence_of :body, length: {minimum: 5}
 
 belongs_to :user
 has_many :responses, dependent: :destroy
 
 acts_as_taggable
end
