# encoding: utf-8

class ImgcapaUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  
  storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  
  version :thumb do
  	process :resize_to_fill => [245, 165]
  end
  
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
