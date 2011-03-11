class AddLevelIdtoVotes < ActiveRecord::Migration
  def self.up
  	add_column  :votes, :level_id, :integer
  end

  def self.down
  	remove_column :votes, :level_id
  end
end
