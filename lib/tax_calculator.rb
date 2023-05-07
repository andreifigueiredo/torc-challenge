class TaxCalculator
  BASIC_SALES_TAX_RATE = 10.0
  IMPORT_TAX_RATE = 5.0

  def self.calculate_sales_tax(price, exempt)
    return 0 if exempt

    validate_numeric_input(price)

    tax = price * (BASIC_SALES_TAX_RATE / 100)
    round_to_nearest_0_05(tax)
  end

  def self.calculate_import_tax(price)
    validate_numeric_input(price)

    tax = price * (IMPORT_TAX_RATE / 100)
    round_to_nearest_0_05(tax)
  end

  private_class_method def self.round_to_nearest_0_05(tax)
    (tax * 20).ceil / 20.0
  end

  private_class_method def self.validate_numeric_input(value)
    raise ArgumentError, 'Input value must be numeric' unless value.is_a?(Numeric)
    raise ArgumentError, 'Input value must be greater than zero' if value <= 0
  end
end
