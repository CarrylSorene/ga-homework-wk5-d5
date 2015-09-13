class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name
      t.integer :age
      t.string :location

      t.timestamps null: false
    end
  end
end
