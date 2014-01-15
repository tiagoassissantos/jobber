class ChangeImoveis < ActiveRecord::Migration
  def self.up
    change_table :imoveis do |t|
      t.remove :estado, :cidade
      t.references :cidade
    end
  end

  def self.down
    change_table :imoveis do |t|
      t.remove :cidade
      t.string :estado
      t.string :cidade
    end
  end
end
