# encoding: UTF-8
class Destaque < ActiveRecord::Base
  require "carrierwave"
  
  mount_uploader :arquivo, ArquivoUploader
end
