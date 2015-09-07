class Passage < ActiveRecord::Base
 belongs_to :user
 has_many :responses, dependent: :destroy
 
 acts_as_taggable
end
