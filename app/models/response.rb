class Response < ActiveRecord::Base
  belongs_to :passage
  belongs_to :user

  validates_presence_of :user_id
  validates_presence_of :passage_id
end
