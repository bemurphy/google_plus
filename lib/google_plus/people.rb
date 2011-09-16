module GooglePlus
  class Person < Hashie::Mash; end

  module People
    class << self
      def get(user_id)
        Client.new.get user_id
      end
    end

    class Client
      include GooglePlus::Client

      def get(user_id)
        Person.new get_with_key("/people/#{user_id}")
      end
    end
  end
end
