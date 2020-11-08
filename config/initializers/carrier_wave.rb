require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      region: Rails.application.credentials.db[:S3_REGION],
      aws_access_key_id: Rails.application.credentials.db[:S3_ACCESS_KEY],
      aws_secret_access_key: Rails.application.credentials.db[:S3_SECRET_KEY],
      path_style: true
    }
    config.fog_directory     =  Rails.application.credentials.db[:S3_BUCKET_KEY]
    config.storage :fog
    config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
  end
  # 日本語ファイル名の設定
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/ 
end