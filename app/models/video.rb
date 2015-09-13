class Video < ActiveRecord::Base
  belongs_to :youtuber
  belongs_to :subscriber
end
