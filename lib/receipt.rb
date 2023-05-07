class Receipt
  attr_reader :items, :sales_tax_total, :total

  def initialize
    @items = []
    @sales_tax_total = 0
    @total = 0
  end

  def add_item(item)
    @items << item
    @sales_tax_total += item.sales_tax + item.import_tax
    @total += item.total_price
  end

  def print_receipt
    @items.each do |item|
      puts "#{item.quantity} #{item.name}: #{'%.2f' % item.total_price.round(2)}"
    end
    puts "Sales Taxes: #{'%.2f' % @sales_tax_total.round(2)}"
    puts "Total: #{'%.2f' % @total.round(2)}"
  end
end