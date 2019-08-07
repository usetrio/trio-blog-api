require "uri"

module Trio
  module Blog
    module API
      class PostAttributes < DocumentReader
        attr_reader :selectors

        def initialize(selectors, document, config)
          super(document, config)
          @selectors = selectors
        end

        def title
          selectors.title_element.text || raise(EmptyAttributeError.new(__method__))
        end

        def thumbnail_image_url
          selectors.thumbnail_image_element.attr("data-src") || raise(EmptyAttributeError.new(__method__))
        end

        def post_url
          post_url = selectors.post_link_element.attr("href") || raise(EmptyAttributeError.new(__method__))
          parsed_post_url = URI.parse(post_url)
          base_url = URI.parse(config.base_url)
          parsed_post_url.host = base_url.host
          parsed_post_url.scheme = base_url.scheme
          parsed_post_url.to_s
        end

        def author_name
          selectors.author_name_element.text || raise(EmptyAttributeError.new(__method__))
        end

        def author_avatar_image_url
          selectors.author_avatar_image_element.attr("data-src") || raise(EmptyAttributeError.new(__method__))
        end
      end
    end
  end
end