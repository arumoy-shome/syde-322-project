class User < ActiveRecord::Base
  has_many :feedbacks
  has_many :authorizations

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true

  def self.create_from_hash!(hash)
    create(name: hash['info']['name'], email: hash['info']['email'],
         image_url: hash['info']['image'])
  end
end
