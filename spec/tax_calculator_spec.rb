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
    
    context 'when the price is not numeric' do
      it 'raises an error' do
        price = 'invalid_price'
        exempt = false
        expect { TaxCalculator.calculate_sales_tax(price, exempt) }.to raise_error(ArgumentError, 'Input value must be numeric')
      end
    end

    context 'when the price is negative' do
      it 'raises an error' do
        price = -10.0
        expect { TaxCalculator.calculate_import_tax(price) }.to raise_error(ArgumentError, 'Input value must be greater than zero')
      end
    end
  end
  
  describe '#calculate_import_tax' do
    it 'calculates and rounds the import tax correctly' do
      price = 10.00
      tax = TaxCalculator.calculate_import_tax(price)
      expect(tax).to eq(0.50)
    end
    
    context 'when the price is not numeric' do
      it 'raises an error' do
        price = 'invalid_price'
        expect { TaxCalculator.calculate_import_tax(price) }.to raise_error(ArgumentError, 'Input value must be numeric')
      end
    end

    context 'when the price is negative' do
      it 'raises an error' do
        price = -10.0
        expect { TaxCalculator.calculate_import_tax(price) }.to raise_error(ArgumentError, 'Input value must be greater than zero')
      end
    end
  end
end
