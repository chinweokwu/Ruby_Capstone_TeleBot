require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://ajith-messages.p.rapidapi.com/getMsgs?category=love")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-host"] = 'ajith-messages.p.rapidapi.com'
request["x-rapidapi-key"] = 'a2434ca4bfmshd883b6dee224563p1ea83djsnc9e99ad0913b'

response = http.request(request)
puts response.read_body