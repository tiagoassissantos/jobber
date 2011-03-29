# encoding: UTF-8
class Cliente < ActiveRecord::Base
  validates_presence_of :nome
  validates_uniqueness_of :nome
  validates_presence_of :telefone
end
