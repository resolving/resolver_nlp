module ResolverNlp
  module Watson
    module Config

      @@username = nil
      @@password = nil

      def self.username=(val)
        @@username = val
      end

      def self.password=(val)
        @@password = val
      end

      def self.password
        @@password
      end

      def self.username
        @@username
      end

      def self.classifier_id=(val)
        @@classifier_id = val
      end

      def self.classifier_id
        @@classifier_id
      end


    end
  end
end
