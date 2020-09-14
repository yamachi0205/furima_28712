class OrdersController < ApplicationController

  def index
    @order = Order.new
    @item = Item.find(params[:item_id])
  end

  def create
    @item = Item.find(params[:item_id])
    @order = OrderAddress.new(order_params)
    if @order.valid?
      pay_item
      @order.save
      return redirect_to root_path
    else
      render 'index'
    end
  end


  private

  def order_params
    params.require(:order).permit(
      :postal_code,
      :area_id,
      :city,
      :house_number,
      :building_name,
      :phone_number,
      
      :item_id
    )
     .merge(user_id: current_user.id, token: params[:token])

  end

  def pay_item
    Payjp.api_key =  ENV["PAYJP_SECRET_KEY"]  # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: @item.price,      #商品の値段
      card:   order_params[:token],     #カードトークン
      currency:'jpy'                    #通貨の種類
    )
  end
end

