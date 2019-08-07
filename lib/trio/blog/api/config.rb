module Trio
  module Blog
    module API
      class Config
        attr_writer :base_url,
                    :post_page_path,
                    :post_selector,
                    :title_selector,
                    :thumbnail_image_url_selector,
                    :post_url_selector,
                    :author_name_selector,
                    :author_avatar_image_url_selector

        def base_url
          @base_url ||= 'https://trio.dev'
        end

        def post_page_path
          @post_page_path ||= '/'
        end

        def post_selector
          @post_selector ||= '.card-article'
        end

        def title_selector
          @title_selector ||= '.card-article-title'
        end

        def thumbnail_image_url_selector
          @thumbnail_image_url_selector ||= '.card-article-thumb'
        end

        def post_url_selector
          @post_url_selector ||= '.card-article-link'
        end

        def author_name_selector
          @author_name_selector ||= '.card-article-author-name'
        end

        def author_avatar_image_url_selector
          @author_avatar_image_url_selector ||= '.card-article-author-image'
        end
      end
    end
  end
end
