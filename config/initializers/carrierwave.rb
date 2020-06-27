CarrierWave.configure do |config|
  config.fog_provider = "fog/aws"
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     Rails.application.credentials[Rails.env.to_sym][:aws_key],   
    aws_secret_access_key: Rails.application.credentials[Rails.env.to_sym][:aws_secret],  
    region:                'sa-east-1',                  
  }
  config.fog_directory  = Rails.application.credentials[Rails.env.to_sym][:aws_bucket]            
end
