puts "Digite el numero de celdas"
@cells = gets.chomp.to_i
@cell = []
@result = 0

@cells.times do
  @cell << "locked"
end

for @round in 1..@cells
  for @multiple in 1..@cells
    closer_opener = @multiple * @round
    if @cell[closer_opener - 1] == "locked" and closer_opener <= @cells
      @cell[closer_opener - 1] = "unlocked"
    elsif @cell[closer_opener - 1] == "unlocked" and closer_opener <= @cells
      @cell[closer_opener - 1] = "locked"
    end
  end
  #puts @cell
end

for counter in 0...@cell.length
  if @cell[counter] == "unlocked"
    @result = @result + 1
  end
end
puts @result
