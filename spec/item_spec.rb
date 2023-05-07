require_relative '../lib/item'

RSpec.describe Item do
  describe '#total_price' do
    it 'calculates the book total price correctly' do
      item = Item.new(2, 'book', 12.49)
      expect(item.total_price.round(2)).to eq(24.98)
    end

    it 'calculates the music CD total price correctly' do
      item = Item.new(1, 'music CD', 14.99, 1.5)
      expect(item.total_price.round(2)).to eq(16.49)
    end

    it 'calculates the imported box of chocolates total price correctly' do
      item = Item.new(1, 'imported box of chocolates', 10.00, 0.50)
      expect(item.total_price.round(2)).to eq(10.50)
    end

    it 'calculates the imported bottle of perfume total price correctly' do
      item = Item.new(1, 'imported bottle of perfume', 47.50, 4.75, 2.4)
      expect(item.total_price.round(2)).to eq(54.65)
    end
  end
end
