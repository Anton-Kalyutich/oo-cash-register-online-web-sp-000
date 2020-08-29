class CashRegister
  
  attr_accessor :total, :discount, :items, :transactions
  
  def initialize(discount=0)
    @total = 0
    @items = []
    @transactions = []
    @discount = discount
  end
  
  def add_item(item, price, quantity=1)
    quantity.times {self.items << item}
    self.transactions << price * quantity
    self.total += self.transactions.last
  end
  
  def apply_discount
    if self.discount > 0
      self.total -= self.total * self.discount / 100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total - self.last_transaction.last
  end
  
end
