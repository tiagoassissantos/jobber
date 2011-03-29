class CreateLogotipos < ActiveRecord::Migration
  def self.up
    create_table :logotipos do |t|
      t.string :arquivo

      t.timestamps
    end
  end

  def self.down
    drop_table :logotipos
  end
end
