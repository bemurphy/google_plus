require 'httparty'
require 'hashie'

module GooglePlus
  autoload :Client,     File.expand_path('../google_plus/client', __FILE__)
  autoload :People,     File.expand_path('../google_plus/people', __FILE__)
  autoload :Activities, File.expand_path('../google_plus/activities', __FILE__)

  include HTTParty

  def self.connect(api_key)
    @@api_key = api_key
    base_uri "https://www.googleapis.com/plus/v1"
  end

  def self.api_key
    @@api_key
  end
end
