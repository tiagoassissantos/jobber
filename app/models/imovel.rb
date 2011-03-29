# encoding: UTF-8
class Imovel < ActiveRecord::Base
  require "carrierwave"
  
  belongs_to :cliente
  belongs_to :cidade
  belongs_to :tipo
  belongs_to :operacao
  has_many :imagens
  
  mount_uploader :imgcapa, ImgcapaUploader
  
  usar_como_dinheiro :valor
  
  cattr_reader :per_page
  @@per_page = 3
end
