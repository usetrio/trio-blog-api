module Trio
  module Blog
    module API
      class DocumentReader
        attr_reader :document, :config

        def initialize(document, config)
          @document = document
          @config = config
        end
      end
    end
  end
end