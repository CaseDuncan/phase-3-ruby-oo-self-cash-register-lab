class CashRegister

    attr_accessor :total, :discount, :items, :price,  :title, :prev_total

    def initialize(discount= 0)
        @discount = discount
        @total= 0
        @items = []
        
    end

    def total
        @total
        
    end

    def add_item(title, price, quantity=1)
        @title = title
        @price = price
        @quantity = quantity
        self.prev_total = price * quantity
        self.total += self.prev_total 
    end

    def apply_discount
        if self.discount != 0 
            percentage_discount = (100.0 - self.discount.to_f)/100
            self.total = (self.total * percentage_discount).to_i
            return "After the discount, the total comes to $#{self.total}."

        else
        return "There is no discount to apply."
        end
    end

    def item
        @items
        
    end

    def void_last_transaction
        self.total -= self.prev_total
        
    end
    
end