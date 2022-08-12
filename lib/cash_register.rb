
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity
  @@items = []
  
    def initialize(discount=0)
        @total = 0
        @discount = discount
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)
        self.total += price.to_f * quantity
        @@items << title
    end

    def apply_discount
        self.total -= self.total * (self.discount.to_f * 0.01 )
        "After the discount, the total comes to $#{self.total.to_i}."
        if self.discount == nil
            "There is no discount to apply."
        end
    end

    def items
        puts @@items
    end

    def void_last_transaction
     puts "Hello"
    end

end