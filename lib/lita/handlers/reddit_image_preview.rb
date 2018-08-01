require "lita"
require 'open-uri'
require 'nokogiri'

module Lita
  module Handlers
    class RedditImagePreview < Handler

      route %r{https://www.reddit.com/r/}i, :reddit_image_preview, command: true

      def reddit_image_preview(response)
        html = open(response, 'User-Agent' => 'lita')
        # puts html.read
        doc = Nokogiri::HTML(html.read)
        if doc.css('img.media-element')[0]
          # puts doc.css('img.media-element')[0].attr('src')
          response.reply doc.css('img.media-element')[0].attr('src')
        end
      end

    end

    Lita.register_handler(RedditImagePreview)
  end
end
