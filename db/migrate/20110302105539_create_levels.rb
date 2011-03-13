class CreateLevels < ActiveRecord::Migration
  def self.up
    create_table :levels do |t|
      t.integer :livello

      t.timestamps
    end
    
    Level.create :livello => "1"
    Level.create :livello => "2"
    Level.create :livello => "3"
    Level.create :livello => "4"
    Level.create :livello => "5"
    Level.create :livello => "6"
    Level.create :livello => "7"
    Level.create :livello => "8"
    Level.create :livello => "9"
    Level.create :livello => "10"
    
  end

  def self.down
    drop_table :levels
  end
end
