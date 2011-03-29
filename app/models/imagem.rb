# encoding: UTF-8
class Imagem < ActiveRecord::Base
  require "carrierwave"
  
  mount_uploader :arquivo, ArquivoUploader
  belongs_to :imovel
end
