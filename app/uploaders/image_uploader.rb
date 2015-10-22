# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :aws
  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fit => [50, 50]
  end

  version :medium do
    process :resize_to_limit => [400, 400]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
