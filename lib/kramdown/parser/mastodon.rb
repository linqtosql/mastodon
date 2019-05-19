require 'kramdown/parser'

module Kramdown
  module Parser
    class Mastodon < Kramdown
      def initialize(source, options)
        super

        @block_parsers = %i(block_html)
        @span_parsers  = %i(emphasis codespan span_html)
      end
    end
  end
end
