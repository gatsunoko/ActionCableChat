# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
   stream_from "room_channel"
   p 'ccccccccccccccccccccccccccccccc'
   #p data['room_id']
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	p 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
  	p data['room_id']
  	Message.create!(text: data['message'], room_id: data['room_id'])
  	p 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbb'
  end
end