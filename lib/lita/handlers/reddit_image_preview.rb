require "lita"
require 'open-uri'
require 'nokogiri'

module Lita
  module Handlers
    class RedditImagePreview < Handler

      route %r{reddit.com/r/}i, :reddit_image_preview, command: false

      def reddit_image_preview(response)
        html = open(response.message.body, 'User-Agent' => 'lita')
        doc = Nokogiri::HTML(html.read)
        if doc.css('img.media-element').length > 0
          response.reply doc.css('img.media-element')[0].attr('src')
        else
          div = doc.css("div[data-test-id=post-content]")

          if div.children[3].css("a")[0]
          	response.reply div.children[3].css("a")[0].attr('href')
          end
        end
      end

    end

    Lita.register_handler(RedditImagePreview)
  end
end
