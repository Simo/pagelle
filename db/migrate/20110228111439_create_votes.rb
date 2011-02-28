class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.integer :list_id
      t.integer :voto
      t.string :note
      t.text :motivo
      t.timestamps
    end
  end

  def self.down
    drop_table :votes
  end
end
