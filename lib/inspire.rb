require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'telegram/bot'
require_relative 'bot.rb'

class InspireQuotes
  def inspire_quotes
    url = URI('https://ajith-messages.p.rapidapi.com/getMsgs?category=quotes')

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-host'] = 'ajith-messages.p.rapidapi.com'
    request['x-rapidapi-key'] = 'a2434ca4bfmshd883b6dee224563p1ea83djsnc9e99ad0913b'

    response = http.request(request)
    res = response.read_body

    JSON.parse(res)['Message']
  end

  def json_rspec
    url = URI('https://ajith-messages.p.rapidapi.com/getMsgs?category=quotes')

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-host'] = 'ajith-messages.p.rapidapi.com'
    request['x-rapidapi-key'] = 'a2434ca4bfmshd883b6dee224563p1ea83djsnc9e99ad0913b'

    response = http.request(request)
    result = response.read_body
    result
  end
end

# k = InspireQuotes.new
# puts k.inspire_quotes
# puts k.json_rspec
