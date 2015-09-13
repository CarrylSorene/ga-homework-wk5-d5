class Youtuber < ActiveRecord::Base
  has_many :videos, dependent: :destroy
  has_many :subscribers, through: :reviews
end
