class ConvertTemperature
  def initialize(from_value, to_value, value)
    @from_value = from_value
    @to_value = to_value
    @value = value
  end

  def from_celsius
    { 'F' => ->(x) { ((1.8 * x) + 32).round(2) },
      'K' => ->(x) { (x + 273.15).round(2) } }
  end

  def from_fahrenheit
    {
      'C' => ->(x) { (0.56 * (x - 32)).round(2) },
      'K' => ->(x) { ((0.56 * (x - 32)) + 273.15).round(2) }
    }
  end

  def from_kelvin
    {
      'C' => ->(x) { (x - 273.15).round(2) },
      'F' => ->(x) { (((x - 273.15) * 1.8) + 32).round(2) }
    }
  end

  def convert
    convert_temper = {
      'C' => from_celsius,
      'F' => from_fahrenheit,
      'K' => from_kelvin
    }
    convert_temper[@from_value][@to_value].call(@value)
  end
end
