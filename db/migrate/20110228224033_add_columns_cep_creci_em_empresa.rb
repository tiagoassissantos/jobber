class AddColumnsCepCreciEmEmpresa < ActiveRecord::Migration
  def self.up
    add_column :empresas, :cep, :string
    add_column :empresas, :creci, :string
  end

  def self.down
    remove_column :empresas, :cep
    remove_column :empresas, :creci
  end
end
