# app/helpers/application_helper.rb
module ApplicationHelper
    def linkify(text)
      URI.extract(text, ['http', 'https']).uniq.each do |url|
        text.gsub!(url, link_to(url, url, target: '_blank', rel: 'noopener noreferrer'))
      end
      text.html_safe
    end
  end
  