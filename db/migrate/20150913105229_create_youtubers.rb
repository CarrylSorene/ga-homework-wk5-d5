class CreateYoutubers < ActiveRecord::Migration
  def change
    create_table :youtubers do |t|

      t.timestamps null: false
    end
  end
end
