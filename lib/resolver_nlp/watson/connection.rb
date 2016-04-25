module ResolverNlp
  module Watson
    module Connection
      include ResolverNlp::Watson::Url


      def connection
        Faraday.new(:url => host, ssl: false) do |faraday|
          faraday.request  :url_encoded             # form-encode POST params
          faraday.response :logger                  # log requests to STDOUT
          faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
          faraday.basic_auth(ResolverNlp::Watson::Config.username,
                             ResolverNlp::Watson::Config.password)
        end
      end

    end
  end
end
