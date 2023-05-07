require_relative '../lib/receipt'
require_relative '../lib/item'

RSpec.describe Receipt do
  describe '#add_item' do
    it 'correctly adds an item and updates sales tax and total' do
      receipt = Receipt.new

      item1 = Item.new(2, 'book', 12.49)
      item2 = Item.new(1, 'music CD', 14.99)
      item3 = Item.new(1, 'chocolate bar', 0.85)

      receipt.add_item(item1)
      receipt.add_item(item2)
      receipt.add_item(item3)

      expect(receipt.items).to eq([item1, item2, item3])
      expect(receipt.total).to eq(40.82)
    end
  end

  describe '#print_receipt' do
    it 'prints the receipt correctly' do
      receipt = Receipt.new

      item1 = Item.new(2, 'book', 12.49)
      item2 = Item.new(1, 'music CD', 14.99)
      item3 = Item.new(1, 'chocolate bar', 0.85)

      receipt.add_item(item1)
      receipt.add_item(item2)
      receipt.add_item(item3)

      expected_output = <<~OUTPUT
        2 book: 24.98
        1 music CD: 14.99
        1 chocolate bar: 0.85
        Sales Taxes: 0.00
        Total: 40.82
      OUTPUT

      expect { receipt.print_receipt }.to output(expected_output).to_stdout
    end
  end
end
