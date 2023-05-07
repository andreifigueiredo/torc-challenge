class Item
  attr_accessor :quantity, :name, :price, :sales_tax, :import_tax

  def initialize(quantity, name, price, sales_tax = 0, import_tax = 0)
    @quantity = quantity
    @name = name
    @price = price
    @sales_tax = sales_tax
    @import_tax = import_tax
  end

  def total_price
    (@price + @sales_tax + @import_tax) * @quantity
  end
end