require_relative '../lib/tax_calculator'

RSpec.describe TaxCalculator do
  describe '#calculate_sales_tax' do
    context 'when the item is exempt' do
      it 'returns 0 tax' do
        price = 12.49
        exempt = true
        tax = TaxCalculator.calculate_sales_tax(price, exempt)
        expect(tax).to eq(0)
      end
    end
    
    context 'when the item is not exempt' do
      it 'calculates and rounds the sales tax correctly' do
        price = 14.99
        exempt = false
        tax = TaxCalculator.calculate_sales_tax(price, exempt)
        expect(tax).to eq(1.50)
      end
    end
  end
  
  describe '#calculate_import_tax' do
    it 'calculates and rounds the import tax correctly' do
      price = 10.00
      tax = TaxCalculator.calculate_import_tax(price)
      expect(tax).to eq(0.50)
    end
  end
end
