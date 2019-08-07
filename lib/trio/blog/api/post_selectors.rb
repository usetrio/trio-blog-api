module Trio
  module Blog
    module API
      class PostSelectors < DocumentReader
        def post_element
          document.css(config.post_selector).first || raise(SelectorNotFoundError.new(config.post_selector))
        end

        def title_element
          post_element.css(config.title_selector).first || raise(SelectorNotFoundError.new(config.title_selector))
        end

        def thumbnail_image_element
          post_element.css(config.thumbnail_image_url_selector).first || raise(SelectorNotFoundError.new(config.thumbnail_image_url_selector))
        end

        def post_link_element
          post_element.css(config.post_url_selector).first || raise(SelectorNotFoundError.new(config.post_url_selector))
        end

        def author_name_element
          post_element.css(config.author_name_selector).first || raise(SelectorNotFoundError.new(config.author_name_selector))
        end

        def author_avatar_image_element
          post_element.css(config.author_avatar_image_url_selector).first || raise(SelectorNotFoundError.new(config.author_avatar_image_url_selector))
        end
      end
    end
  end
end