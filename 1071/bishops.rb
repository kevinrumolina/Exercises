puts "Digite el tamaño n del tablero n x n"
@n = gets.chomp.to_i

if @n < 0
  puts "Los tableros no pueden ser hechos de numeros negativos"
elsif @n < 2
  @number_of_bishops = @n
  puts @number_of_bishops
else
  @number_of_bishops = @n + (@n-2)
  puts @number_of_bishops
end
