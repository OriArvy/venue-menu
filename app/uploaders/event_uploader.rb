class EventUploader < CarrierWave::Uploader::Base
   include Cloudinary::CarrierWave
end
