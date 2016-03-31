class Event < ActiveRecord::Base
  has_and_belongs_to_many :users

  validates_presence_of :name, :event_date, :users
end
