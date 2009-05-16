class CreateNoVotes < ActiveRecord::Migration
  def self.up
    create_table :no_votes do |t|
      t.integer :poll_id
      t.string :body

      t.timestamps
    end
  end

  def self.down
    drop_table :no_votes
  end
end
