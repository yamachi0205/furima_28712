class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(
      :name,
      :price,
      :category_id,
      :image,
      :comment,
      :user_id,
      :status_id,
      :postage_id,
      :area_id,
      :days_id,
    )
  end
end
