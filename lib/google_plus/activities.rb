module GooglePlus
  class Activity < Hashie::Mash; end

  module Activities
    class << self
      def get(activity_id)
        Client.new.get activity_id
      end

      def list(user_id)
        Client.new.list user_id
      end
    end

    class Client
      include GooglePlus::Client

      def get(activity_id)
        Activity.new get_with_key("/activities/#{activity_id}")
      end

      def list(user_id)
        items = get_with_key("/people/#{user_id}/activities/public")["items"]
        items ? items.collect { |item| Activity.new item } : []
      end
    end
  end
end
