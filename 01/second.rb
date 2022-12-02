calories_by_elf = []
current_calories = 0

File.open("./input.txt").each do |line|
  if line.strip == ""
    calories_by_elf.push current_calories
    current_calories = 0
  else
    current_calories += line.to_i
  end
end

calories_by_elf.sort!

top_three = calories_by_elf.last(3)

top_three_sum = top_three.sum

puts top_three_sum
