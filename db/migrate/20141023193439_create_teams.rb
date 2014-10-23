class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :point_of_contact_id

      t.timestamps
    end
  end
end
