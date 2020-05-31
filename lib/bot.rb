require 'telegram/bot'
require_relative 'love.rb'
require_relative 'inspire.rb'
require 'uri'
require 'net/http'
require 'openssl'

# rubocop:disable Layout/LineLength
# rubocop:disable Metrics/BlockLength
# rubocop:disable  Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength

class BotRun
  def initialize
    # @morah_bot
    token = '1239771112:AAFc73gTTkpsr9aoO4rNMPo-qKeKfsmQpyI'
    #chinwe_bot
    # token = '1224632117:AAH6HqfJAUd0Xw4qcbuBit7F4AyDbCUce64'
    Telegram::Bot::Client.run(token) do |bot|
     
       bot.listen do |message|
         case message.text
         when '/hi'
           bot.api.send_message(
             chat_id: message.chat_id,
             text: "Hello!!! #{message.from.first_name}. Welcome to a love and inspiration chatbot created by Morah Paul."
           )
         when '/start'
           bot.api.send_message(
             chat_id: message.chat_id,
             text: 'Use /start to start the bot, /stop to end the bot, /inspire to get a diffrent inspirational quote, /love to get a love quote'
           )
         when '/stop'
           bot.api.send_message(
             chat_id: message.chat_id,
             text: "BYE #{message.from.first_name}"
           )
         when '/love'
           love_quote = LoveQuotes.new

           bot.api.send_message(
             chat_id: message.chat_id,
             text: love_quote.luv
           )
         when '/inspire'
           inspire = InspireQuotes.new

           bot.api.send_message(
             chat_id: message.chat_id,
             text: inspire.inspire_quotes
           )
         end
       end

    end
  end
end
# rubocop:enable  Metrics/CyclomaticComplexity
# rubocop:enable Layout/LineLength
# rubocop:enable Metrics/BlockLength
# rubocop:enable Metrics/MethodLength
