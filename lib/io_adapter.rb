class IOAdapter
  def self.input_scale
    puts_menu
    menu = { '1' => 'C',
             '2' => 'K',
             '3' => 'F',
             '4' => 'EXIT' }
    ch = $stdin.gets.chomp
    if check_choice(menu[ch]) == false
      input_scale
    else
      menu[ch]
    end
  end

  def self.output_scale(choice)
    menu = { 'C' => %w[K F],
             'K' => %w[C F],
             'F' => %w[C K] }
    menu[choice]
  end

  def self.input_value(choice)
    puts 'Enter value'
    print("#{choice} = ")
    temperature = $stdin.gets.chomp
    convert_value(temperature)
  end

  def self.output_value(scale, res)
    puts("#{scale} = #{res}")
  end

  def self.puts_menu
    puts "Сhoose an action:\n1. Convert from C\n2. Convert from K\n3. Convert from F\n4. Exit\n"
  end

  def self.check_choice(choice)
    case choice
    when 'EXIT'
      puts('Good luck')
      abort
    when nil
      puts('Invalid input')
      false
    else
      true
    end
  end

  def self.convert_value(temperature)
    if check_value(temperature)
      Float(temperature)
    else
      input_value(choice)
    end
  end

  def self.check_value(value)
    !Float(value).nil?
  rescue StandardError
    puts('Invalid input')
    false
  end
end
