class CreateRsvps < ActiveRecord::Migration
  def self.up
    create_table :rsvps do |t|
      t.string :names
      t.boolean :attending
      t.integer :level_of_participation

      t.timestamps
    end
  end

  def self.down
    drop_table :rsvps
  end
end
