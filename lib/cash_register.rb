require 'pry'
class CashRegister
  attr_accessor :total, :discount
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity=1)
    @total += price * quantity
  end
  
  def apply_discount
     #self.discount = 20
     if @discount > 0
       @total *= (100 - @discount.to_f)/100
    "After the discount, the total comes to $#{@total.to_i}."
     elsif @discount == 0
     "There is no discount to apply."
    end
  end
end
