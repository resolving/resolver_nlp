module ResolverNlp
  module Watson
    class ResolverNlp::Watson::Classifier
      include ResolverNlp::Watson::Connection

      def response(text, max_length=1024)
        connection.get do |req|
          req.url classifier_url(ResolverNlp::Watson::Config.classifier_id)
          req.params['text'] = text
        end
      end

    end
  end
end
