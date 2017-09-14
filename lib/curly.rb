require 'uri'
require 'net/http'
require 'pry'

class Curly
    attr_accessor :base, :headers, :res

    def initialize(base = "")
        @base = base
        @headers = {}
    end

    def get(path , headers = @headers)
        uri = URI.parse(base + path)
        request = Net::HTTP::Get.new(uri)
        headers.each {|k,v| request[k] = v}

        req_options = { use_ssl: uri.scheme == "https" }

          
        response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
            http.request(request)
        end

        [response.code, response.body]
    end
end