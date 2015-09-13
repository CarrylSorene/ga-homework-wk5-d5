class CreateYoutubers < ActiveRecord::Migration
  def change
    create_table :youtubers do |t|
      t.string :name
      t.string :category

      t.timestamps null: false
    end
  end
end
