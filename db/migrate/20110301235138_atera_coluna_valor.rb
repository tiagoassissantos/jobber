class AteraColunaValor < ActiveRecord::Migration
  def self.up
    remove_column :imoveis, :valor
    add_column :imoveis, :valor, :decimal, :precision => 14, :scale => 2
  end

  def self.down
    remove_column :imoveis, :valor
    add_column :imoveis, :valor, :integer
  end
end
