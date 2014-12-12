class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name_of_team
      t.text :type_of_team
      t.integer :number_of_members
      t.text :description

      t.timestamps
    end
  end
end
