module Trio
  module Blog
    module API
      class PostReader < DocumentReader
        def selectors
          @selectors ||= PostSelectors.new(document, config)
        end

        def attributes
          @attributes ||= PostAttributes.new(selectors, document, config)
        end

        def to_h
          {
              title: attributes.title,
              thumbnail_image_url: attributes.thumbnail_image_url,
              post_url: attributes.post_url,
              author: {
                  name: attributes.author_name,
                  avatar_image_url: attributes.author_avatar_image_url
              }
          }
        end
      end
    end
  end
end