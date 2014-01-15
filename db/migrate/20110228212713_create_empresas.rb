class CreateEmpresas < ActiveRecord::Migration
  def self.up
    create_table :empresas do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :telefone1
      t.string :telefone2
      t.string :celular
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :empresas
  end
end
