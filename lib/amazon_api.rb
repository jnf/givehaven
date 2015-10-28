module GiveHavenAPIs
  class AmazonAPI
    require 'httparty'
    require 'time'
    require 'uri'
    require 'openssl'
    require 'base64'

    # Your AWS Access Key ID, as taken from the AWS Your Account page
    AWS_ACCESS_KEY_ID = ENV["AWS_PRODUCT_KEY"]

    # Your AWS Secret Key corresponding to the above ID, as taken from the AWS Your Account page
    AWS_SECRET_KEY = ENV["AWS_PRODUCT_SECRET"]
    #  "4GKlmrksiZyOVRq8waKZsduikesO0Li3g8WYBLTC"

    # The region you are interested in
    ENDPOINT = "webservices.amazon.com"

    REQUEST_URI = "/onca/xml"

    def self.params
      params = {
        "Service" => "AWSECommerceService",
        "Operation" => "ItemSearch",
        "AWSAccessKeyId" => ENV["AWS_PRODUCT_KEY"],
        "AssociateTag" => "give0b4-20",
        "SearchIndex" => "All",
        "Keywords" => "toilet paper",
        "ResponseGroup" => "ItemAttributes"
      }

      # Set current timestamp if not set
      params["Timestamp"] = Time.now.gmtime.iso8601 if !params.key?("Timestamp")
      return params
    end
      # Generate the canonical query
    def self.canonical_query_string
        params.sort.collect do |key, value|
        [URI.escape(key.to_s, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]")), URI.escape(value.to_s, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))].join('=')
      end.join('&')
    end

      # Generate the string to be signed
    def self.string_to_sign
      "GET\n#{ENDPOINT}\n#{REQUEST_URI}\n#{canonical_query_string}"
    end

      # Generate the signature required by the Product Advertising API
    def self.signature
      Base64.encode64(OpenSSL::HMAC.digest(OpenSSL::Digest.new('sha256'), AWS_SECRET_KEY, string_to_sign)).strip()
    end
    # Generate the signed URL
    def self.search
      url = "http://#{ENDPOINT}#{REQUEST_URI}?#{canonical_query_string}&Signature=#{URI.escape(signature, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))}"
      results = HTTParty.get(url)
    end

    # def self.amazon_request(url)
    #   results = HTTParty.get(url)
    # end

  end
end
