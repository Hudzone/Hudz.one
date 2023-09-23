require 'net/http'
require 'uri'

uri = URI.parse 'http://192.168.31.1/cgi-bin/luci/web/home'

response = Net::HTTP.post_form uri, "router_password" => '370537'
puts response.body