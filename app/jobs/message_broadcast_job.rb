class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
  	p 'dddddddddddddddddddddddddddddddddd'
   	p "room_channel#{message.room_id}"
  	ActionCable.server.broadcast "room_channel#{message.room_id}", message: render_message(message)
  end

  private
  	def render_message(message)
  		ApplicationController.renderer.render(partial: 'rooms/message', locals: { message: message })
  	end
end
