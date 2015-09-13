class AddYoutuberIdAndSubscriberIdToVideos < ActiveRecord::Migration
  def change
    add_reference :videos, :youtuber, index: true, foreign_key: true
    add_reference :videos, :subscriber, index: true, foreign_key: true
  end
end
