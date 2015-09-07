class Response < ActiveRecord::Base
  belongs_to :passage
  belongs_to :user
end
