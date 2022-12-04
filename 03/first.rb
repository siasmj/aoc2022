priority_sum = 0
priority_order = ("a".."z").to_a + ("A".."Z").to_a

File.open("./input.txt").each do |line|
  rucksack_size = line.strip.length
  compartment_size = rucksack_size / 2

  first_compartment = line[0..(compartment_size - 1)]
  second_compartment = line[compartment_size..(rucksack_size - 1)]

  first_compartment.chars.each do |char|
    if second_compartment.include?(char)
      priority = priority_order.find_index(char) + 1
      priority_sum += priority
      break
    end
  end
end

puts priority_sum
