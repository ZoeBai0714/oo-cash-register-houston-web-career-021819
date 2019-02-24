require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @titles = []
    @items = {:title =>"", :price => "", :quantity => ""}
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity=1)
    @total += price * quantity
    @items[:title] = title
    @items[:price] = price
    @items[:quantity] = quantity
    
    quantity.times do
      @titles << title
    end
    
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
    @titles
  end
  
  def void_last_transaction
  end
end
