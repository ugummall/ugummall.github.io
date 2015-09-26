# Jekyll Lightbox Plugin
#
# Bart Vandeweerdt | www.appfoundry.be
#
# Example usage: {% lightbox images/appfoundry.png --data="some data" --title="some title" --alt="some alt" --img_style="css styling" %}
module Jekyll
  class LightboxTag < Liquid::Tag

    def initialize(tag_name, text, token)
      super

      # The path to our image
      @path = text.split(/\s+/)[0].strip

      # Defaults
      @title = ''
      @alt = ''
      @img_style = ''
      @data = ''
      @class = ''

      # Parse Options
      if text =~ /--title="([^"]*)"/i
        @title = text.match(/--title="([^"]*)"/i)[1]
      end
      if text =~ /--alt="([^"]*)"/i
        @alt = text.match(/--alt="([^"]*)"/i)[1]
      end
      if text =~ /--img_style="([^"]*)"/i
        @img_style = text.match(/--img_style="([^"]*)"/i)[1]
      end
      if text =~ /--data="([^"]*)"/i
        @data = text.match(/--data="([^"]*)"/i)[1]
      end
      if text =~ /--class="([^"]*)"/i
        @class = text.match(/--class="([^"]*)"/i)[1]
      end

    end

    def render(context)
      url = context.registers[:page]["url"]
      relative = "a"
      #src = File.join(relative, @path == nil ? '' : @path);
      src= @path
      %{<a href="#{src}" data-lightbox="#{url}#{@data}" data-title="#{@title}"><img src="#{src}" alt="#{@alt || @title}" class="#{@class}" style="#{@img_style}"/></a>}
    end
  end
end

Liquid::Template.register_tag('lightbox', Jekyll::LightboxTag)