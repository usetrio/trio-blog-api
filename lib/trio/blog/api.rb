require "typhoeus"
require "nokogiri"
require "trio/blog/api/version"
require "trio/blog/api/config"
require "trio/blog/api/document_reader"
require "trio/blog/api/post_reader"
require "trio/blog/api/post_selectors"
require "trio/blog/api/post_attributes"
require "trio/blog/api/error/error"
require "trio/blog/api/error/response_error"
require "trio/blog/api/error/selector_not_found_error"
require "trio/blog/api/error/empty_attribute_error"

module Trio
  module Blog
    module API
      extend self

      def config
        @config ||= Config.new
      end

      def configure
        yield config
      end

      def fetch_last_post
        response = Typhoeus.get(config.base_url)
        raise ResponseError.new(response) unless response.success?
        PostReader.new(Nokogiri::HTML(response.body), config)
      end
    end
  end
end
