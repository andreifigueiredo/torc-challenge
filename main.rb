require_relative './lib/item'
require_relative './lib/receipt'
require_relative './lib/tax_calculator'

def parse_input(input)
  input_lines = input.split("\n")
  receipt = Receipt.new

  exempt_items = File.readlines('data/exempt_items.txt').map(&:strip)

  input_lines.each do |line|
    quantity, product = line.split(" ", 2)
    quantity = quantity.to_i
    name, price = product.rpartition(" at ")[0].strip, product.rpartition(" at ")[2].to_f

    exempt = exempt_items.any? { |exempt_item| name.include?(exempt_item) }
    imported = name.include?('imported')

    sales_tax = TaxCalculator.calculate_sales_tax(price, exempt)
    import_tax = imported ? TaxCalculator.calculate_import_tax(price) : 0

    receipt.add_item(Item.new(quantity, name, price, sales_tax, import_tax))
  end

  receipt
end

file_name = ARGV[0]

if file_name.nil?
  puts "Please provide an input file name as an argument."
  exit
end

input_file = File.open(file_name)
input = input_file.read
input_file.close

receipt = parse_input(input)
receipt.print_receipt
