class Feedback < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :rating, :user_id
end
