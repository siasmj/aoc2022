current_sum = 0
top_sum = 0

File.open("./input.txt").each do |line|
  if line.strip == ""
    if current_sum > top_sum
      top_sum = current_sum
    end
    current_sum = 0
  else
    current_sum += line.to_i
  end
end

puts top_sum
