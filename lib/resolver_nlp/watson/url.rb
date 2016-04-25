module ResolverNlp
  module Watson
    module Url

      HOST = "https://gateway.watsonplatform.net"
      API = "/natural-language-classifier/api/v1/classifiers"

      def host
        HOST
      end

      def api_url
        API
      end

      def classifier_url(classifier_id)
       "#{API}/#{classifier_id}/classify" 
      end
    end
  end
end
