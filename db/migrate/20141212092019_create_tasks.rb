class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :type
      t.date :dateline
      t.time :timeline
      t.integer :taskable_id
      t.string :taskable_type
      t.text :description

      t.timestamps
    end
  end
end
