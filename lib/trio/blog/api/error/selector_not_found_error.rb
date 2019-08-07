module Trio
  module Blog
    module API
      class SelectorNotFoundError < Error
        attr_reader :selector

        def initialize(selector)
          super("Element not found with '#{selector}' selector")
          @selector = selector
        end
      end
    end
  end
end