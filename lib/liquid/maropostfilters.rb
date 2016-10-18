require 'cgi'
require 'bigdecimal'
require 'digest'

module Liquid
  module MaropostFilters
    HTML_ESCAPE = {
      '&'.freeze => '&amp;'.freeze,
      '>'.freeze => '&gt;'.freeze,
      '<'.freeze => '&lt;'.freeze,
      '"'.freeze => '&quot;'.freeze,
      "'".freeze => '&#39;'.freeze
    }
    HTML_ESCAPE_ONCE_REGEXP = /["><']|&(?!([a-zA-Z]+|(#\d+));)/

    def md5(input)
      Digest::MD5.hexdigest(input)
    end

    def rmd160(input)
      Digest::RMD160.hexdigest(input)
    end

    def sha1(input)
      Digest::SHA1.hexdigest(input)
    end

    def sha2(input)
      Digest::SHA2.hexdigest(input)
    end

    def sha256(input)
      Digest::SHA256.hexdigest(input)
    end

    def sha384(input)
      Digest::SHA384.hexdigest(input)
    end

    def sha512(input)
      Digest::SHA512.hexdigest(input)
    end
  end

  Template.register_filter(MaropostFilters)
end
