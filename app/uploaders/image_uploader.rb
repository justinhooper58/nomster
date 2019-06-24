class ImageUploader < CarrierWave::Uploader::Base
  

storage :file
  
  end

  version :thumb do
    process resize_to_fit: [50, 50]
  end


  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
