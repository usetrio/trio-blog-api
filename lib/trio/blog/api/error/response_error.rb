module Trio
  module Blog
    module API
      class ResponseError < Error
        attr_reader :response

        def initialize(response)
          super(response.return_message)
          @response = response
        end
      end
    end
  end
end