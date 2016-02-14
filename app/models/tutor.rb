class Tutor < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :subjects

  validates :user_id, presence: true, uniqueness: true
end
