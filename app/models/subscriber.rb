class Subscriber < ActiveRecord::Base
  has_many :videos, dependent: :destroy
  has_many :youtubers, through: :videos
end
