class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def total
    @total
  end
  
  def items
    @@items
  end
  
  def add_item(item, price, quantity=1)
    self.items << item
    self.total += price * quantity
  end
  
  def apply_discount
    if self.discount > 0
      self.total -= self.total * self.discount / 100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    self.items.uniq
  end
  
end
