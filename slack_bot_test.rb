require 'slack-ruby-bot'

class BlenderBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'pong', channel: data.channel)
  end

  command 'blend' do |client, data, match|
    client.say(text: meow, channel: data.channel)
  end



  private
  

  def self.meow
    memes = ["https://imgflip.com/i/1xm37x"]
    memes.sample
  end

  
end

BlenderBot.run