class CreateJoinTeamContracts < ActiveRecord::Migration
  def change
    create_table :join_team_contracts do |t|
      t.integer :team_id
      t.integer :student_id
      t.boolean :team_accepted
      t.boolean :student_accepted

      t.timestamps
    end
  end
end
