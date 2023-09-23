require 'net/http'

response = Net::HTTP.get '192.168.31.1', '/cgi-bin/luci/web/home'
puts response