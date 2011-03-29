class CreateDestaques < ActiveRecord::Migration
  def self.up
    create_table :destaques do |t|
      t.string :titulo
      t.text :texto
      t.string :arquivo
      
      t.timestamps
    end
  end

  def self.down
    drop_table :destaques
  end
end
