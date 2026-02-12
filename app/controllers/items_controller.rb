class ItemsController < ApplicationController
  before_action :set_room

  def create
    @item = @room.items.build(item_params)
    
    # Create the itemable (Link or Document) based on type
    if params[:type] == 'link'
      @item.itemable = Link.new(link_params)
    elsif params[:type] == 'document'
      @item.itemable = Document.new(document_params)
    end

    if @item.save
      redirect_to @room, notice: "Content added successfully!"
    else
      redirect_to @room, alert: "Failed to add content: #{@item.errors.full_messages.join(', ')}"
    end
  end

  def update
    @item = @room.items.find(params[:id])
    
    # Handle position updates for drag-and-drop reordering
    if params[:item][:position]
      @item.insert_at(params[:item][:position].to_i)
      head :ok
    else
      head :unprocessable_entity
    end
  end

  def destroy
    @item = @room.items.find(params[:id])
    @item.destroy
    redirect_to @room, notice: "Content removed successfully!"
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def item_params
    params.fetch(:item, {}).permit(:position)
  end

  def link_params
    params.require(:link).permit(:url, :title, :description)
  end

  def document_params
    params.require(:document).permit(:title, :description, :file)
  end
end
