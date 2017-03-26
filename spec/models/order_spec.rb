require 'spec_helper'
require 'rails_helper'

describe Order do 
  it "расчет полной стоимости заказа" do 
  	item1 = Item.new(price: 10)
    item2 = Item.new(price: 20)

    order = Order.new
    order.items << item1
    order.items << item2

    order.calculate_total
    expect(order.total).to eq(30)
end
  
  it "raises exception if order has no items in it" do 
  	expect( ->{create(:order)}).to raise_exception
  end
end
