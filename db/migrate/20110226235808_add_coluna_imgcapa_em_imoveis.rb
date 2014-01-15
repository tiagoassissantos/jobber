class AddColunaImgcapaEmImoveis < ActiveRecord::Migration
  def self.up
    add_column :imoveis, :imgcapa, :string
  end

  def self.down
    remove_column :imoveis, :imgcapa
  end
end
