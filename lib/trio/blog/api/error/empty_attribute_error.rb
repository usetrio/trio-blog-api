module Trio
  module Blog
    module API
      class EmptyAttributeError < Error
        attr_reader :attribute_name

        def initialize(attribute_name)
          super("Empty attribute value for '#{attribute_name}'")
          @attribute_name = attribute_name
        end
      end
    end
  end
end