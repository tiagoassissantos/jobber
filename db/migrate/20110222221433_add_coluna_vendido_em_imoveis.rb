class AddColunaVendidoEmImoveis < ActiveRecord::Migration
  def self.up
    change_table :imoveis do |t|
      t.boolean :vendido
    end
  end

  def self.down
    change_table :imoveis do |t|
      t.remove :vendido
    end
  end
end
