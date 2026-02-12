module Public
  class RoomsController < ApplicationController
    layout 'public'

    def show
      @room = Room.find_by!(token: params[:token])
      @items = @room.items.order(:position)

      # Track viewer analytics
      @room.viewers.create(
        accessed_at: Time.current,
        ip_address: request.remote_ip,
        user_agent: request.user_agent
      )
    end
  end
end
