require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity=1)
    @total += price * quantity
    @items << title
  end
  
  def apply_discount
     if @discount > 0
       @total *= (100 - @discount.to_f)/100
    "After the discount, the total comes to $#{@total.to_i}."
     elsif @discount == 0
     "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
end
