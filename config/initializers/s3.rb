CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = 'givehaven'
  config.aws_acl    = 'public-read'
  config.aws_credentials = {
    :access_key_id      => ENV["AWS_S3_ACCESS_KEY"],
    :secret_access_key  => ENV["AWS_S3_SECRET_ACCESS_KEY"],
    :region             => ENV["AWS_S3_REGION"]
  }
end
