class User < ActiveRecord::Base
  has_many :feedbacks
  has_many :authorizations
  has_and_belongs_to_many :events

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true

  def self.find_from_hash(hash)
    find_by_name(hash[:info][:name])
  end

  def self.create_from_hash!(hash)
    create(name: hash[:info][:name], email: hash[:info][:email],
           image_url: hash[:info][:image])
  end
end
