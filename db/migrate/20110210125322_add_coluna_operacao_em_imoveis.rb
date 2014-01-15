class AddColunaOperacaoEmImoveis < ActiveRecord::Migration
  def self.up
    change_table :imoveis do |t|
      t.references :operacao
    end
  end

  def self.down
    change_table :imoveis do |t|
      t.remove :operacao
    end
  end
end
