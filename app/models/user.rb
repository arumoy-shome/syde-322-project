class User < ActiveRecord::Base
  has_many :feedbacks
  has_many :authorizations

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
