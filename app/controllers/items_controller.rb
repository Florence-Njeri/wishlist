class ItemsController < ApplicationController
    def index
        @items = Item.all
    end
    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)

        if @item.save
            redirect_to action: "index"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def item_params
      params.require(:item).permit(:item, :link, :cost)
    end
end
