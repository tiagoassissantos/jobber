class CreateImagens < ActiveRecord::Migration
  def self.up
    create_table :imagens do |t|
      t.string :nome_arquivo
      t.string :legenda
      t.string :arquivo
      t.references :imovel
      
      t.timestamps
    end
  end

  def self.down
    drop_table :imagens
  end
end
