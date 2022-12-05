array_hash = {}

File.open("./input.txt").each do |line|
  if line.match?(/[A-Z]/)
    indices = line.enum_for(:scan, /[A-Z]/).map do
      Regexp.last_match.offset(0).first
    end

    adjusted_indices = indices.map do |index|
      (index + 3) / 4
    end

    stacks = adjusted_indices.zip(line.scan(/[A-Z]/)).to_h

    stacks.each do |index, crate|
      if !array_hash["stack_#{index}"]
        array_hash["stack_#{index}"] = [crate]
      else
        array_hash["stack_#{index}"].unshift(crate)
      end
    end
  end

  if line.match?(/^move/)
    quantity, source, destination = line.scan(/[0-9]+/)
    quantity = quantity.to_i

    array_hash["stack_#{destination}"].push(array_hash["stack_#{source}"].pop(quantity)).flatten!
  end
end

array_hash.sort.each do |key, value|
  puts "#{key}: #{value[-1]}"
end
