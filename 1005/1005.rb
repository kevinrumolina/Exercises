def test_cases_validation
  if @test_cases.to_i == 0
    puts "there is no test cases or your input was not a number"
  else
    @test_cases = @test_cases.to_i
  end
end

def number_of_orders_validation
  if @number_of_orders.to_i == 0
    puts "there is no orders or your input was not a number"
  else
    @number_of_orders = @number_of_orders.to_i
  end
end

def orders_validation
  @order = @order.scan(/[0-9]+/)
  if @order.length ==3
    for i in (1..2)
      if @order[i].to_i == 0
        puts "el dato #{i} de este caso no es valido"
      end
    end
    @start_time = @order[0].to_i
    @duration = @order[1].to_i
    @price = @order[2].to_i
  else
    puts "Your input isn't valid"
  end
end

puts "Number of Test Cases?:"
@test_cases = gets.chomp

test_cases_validation

if 1 <= @test_cases and @test_cases <= 30
  for @test_cases in (1..@test_cases) do
    puts "Number of Orders for this Test Cases:"
    @number_of_orders = gets.chomp
    number_of_orders_validation
    puts "Put your orders on this way (start time, duration, price)"
    for @number_of_orders in (1..@number_of_orders)
      i = 1
      puts "Order # #{i}"
      @order = gets.chomp
      orders_validation
      i = i + 1
    end
  end
else
  puts "your input is lower or higher than the min or max number of test cases allowed"
end
