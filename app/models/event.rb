class Event < ActiveRecord::Base
  belongs_to :tutor
  has_many :user

  validates :tutor_id, presence: true
end
