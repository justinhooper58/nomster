class ImageUploader < CarrierWave::Uploader::Base
  

storage :file

#storage :fog    

def store_dir     
“uploads/“ + model.class.to-s.underscore + “/“ + mounted_as + “/“ + model.id  
end 

  version :thumb do
  process resize_to_fit: [50, 50]
  end


  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
end


