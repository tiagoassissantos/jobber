# encoding: UTF-8
class Logotipo < ActiveRecord::Base
  require "carrierwave"
  
  mount_uploader :arquivo, ArquivoUploader
end
