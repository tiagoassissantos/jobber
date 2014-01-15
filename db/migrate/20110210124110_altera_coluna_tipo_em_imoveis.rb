class AlteraColunaTipoEmImoveis < ActiveRecord::Migration
  def self.up
    change_table :imoveis do |t|      
      t.references :tipo
    end
  end

  def self.down
    change_table :imoveis do |t|
      t.remove :tipo      
    end
  end
end
