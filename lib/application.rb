require './lib/convert_temperature'
require './lib/io_adapter'

class Application
  def convert_launch
    choice = IOAdapter.input_scale
    temperature = IOAdapter.input_value(choice)
    IOAdapter.output_scale(choice).each do |x|
      IOAdapter.output_value(x, ConvertTemperature.new(choice, x, temperature).convert)
    end
  end

  def run
    loop do
      convert_launch
    end
  end
end
