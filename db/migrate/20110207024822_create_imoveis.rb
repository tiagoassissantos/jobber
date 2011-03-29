class CreateImoveis < ActiveRecord::Migration
  def self.up
    create_table :imoveis do |t|
      t.string :titulo
      t.text :descricao
      t.string :estado
      t.string :cidade
      t.string :bairro
      t.string :logradouro
      t.string :complemento
      t.string :numero
      t.string :tipo
      t.integer :suite
      t.integer :quarto
      t.integer :sala
      t.integer :copa
      t.integer :cozinha
      t.integer :banheiro
      t.integer :lavabo
      t.integer :garagem
      t.integer :areaTerreno
      t.integer :areaconstruida
      t.integer :valor
      t.references :cliente

      t.timestamps
    end
  end

  def self.down
    drop_table :imoveis
  end
end
