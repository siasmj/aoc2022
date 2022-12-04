priority_sum = 0
priority_order = ("a".."z").to_a + ("A".."Z").to_a

rucksacks = []
File.open("./input.txt").each do |line|
  rucksacks.push(line.strip)
end

rucksacks.each_slice(3) do |group_rucksacks|
  badge = group_rucksacks[0].chars & group_rucksacks[1].chars & group_rucksacks[2].chars
  priority = priority_order.find_index(badge[0]) + 1
  priority_sum += priority
end

puts priority_sum
