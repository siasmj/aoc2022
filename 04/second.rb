all_sections = []
File.open("./input.txt").each do |line|
  all_sections.push(line.strip)
end

@parsed_sections = all_sections.map do |line|
  line.split(",").map do |elf|
    elf
      .split("-")
      .map(&:to_i)
      .reduce(&Range.method(:new))
  end
end

def overlap_count
  @parsed_sections.count do |first_elf, second_elf|
    first_elf.cover?(second_elf.first) || second_elf.cover?(first_elf.first)
  end
end

puts overlap_count
