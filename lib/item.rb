class Item
  attr_accessor :quantity, :name
  attr_reader :price, :sales_tax, :import_tax

  def initialize(quantity, name, price, sales_tax = 0, import_tax = 0)
    @quantity = quantity
    @name = name
    @price = convert_to_float(price)
    @sales_tax = convert_to_float(sales_tax)
    @import_tax = convert_to_float(import_tax)
  end

  def total_price
    (@price + @sales_tax + @import_tax) * @quantity
  end

  private

  def convert_to_float(value)
    Float(value)
  rescue TypeError, ArgumentError
    raise "Invalid float value: #{value}"
  end
end
