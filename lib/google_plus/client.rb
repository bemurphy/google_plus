module GooglePlus
  module Client
    private

    def api_key
      GooglePlus.api_key
    end

    def get_with_key(url, options = {})
      options[:query] ||= {}
      options[:query].merge!(:key => api_key)
      GooglePlus.get(url, options)
    end
  end
end
