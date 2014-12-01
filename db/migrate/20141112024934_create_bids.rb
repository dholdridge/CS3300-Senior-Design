class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :team_id
      t.integer :project_id
      t.text :bid_text

      t.timestamps
    end
  end
end
