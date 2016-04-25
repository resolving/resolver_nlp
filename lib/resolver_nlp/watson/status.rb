module ResolverNlp
  module Watson
    class Status
      include ResolverNlp::Watson::Connection

      def response(classifier_id)
        connection.get(classifier_url(classifier_id))     # GET http://sushi.com/nigiri/sake.json
      end

    end
  end
end
