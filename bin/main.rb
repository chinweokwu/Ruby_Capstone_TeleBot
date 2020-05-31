require_relative '../lib/bot.rb'
require 'dotenv'

puts 'Hello!, Welcome to telegram bot'
puts '----------------------------------------------'
puts 'This is a bot to help you stay inspired by giving you inspirational quotes'
puts 'The bot can also keep you entertained by providing you with love quotes'
sleep(0.8)
puts '----------------------------------------------'
puts '...loading the bot is now online... use ctrl-c to stop the bot'

BotRun.new
