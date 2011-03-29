class CreateOperacoes < ActiveRecord::Migration
  def self.up
    create_table :operacoes do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :operacoes
  end
end
