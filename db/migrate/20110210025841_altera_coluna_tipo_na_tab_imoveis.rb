class AlteraColunaTipoNaTabImoveis < ActiveRecord::Migration
  def self.up
    change_table :imoveis do |t|
      t.remove :tipo      
    end
  end

  def self.down
    change_table :imoveis do |t|      
      t.string :tipo
    end
  end
end
