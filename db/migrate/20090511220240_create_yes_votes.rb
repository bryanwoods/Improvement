class CreateYesVotes < ActiveRecord::Migration
  def self.up
    create_table :yes_votes do |t|
      t.integer :poll_id
      t.string :body

      t.timestamps
    end
  end

  def self.down
    drop_table :yes_votes
  end
end
