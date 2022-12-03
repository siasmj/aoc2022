my_total_score = 0

File.open("./input.txt").each do |line|
  opponent_play = line.chars[0]
  my_play = line.chars[2]

  case opponent_play
  when "A" # Opponent played Rock
    case my_play
    when "X" # I played Rock
      my_total_score += 4
    when "Y" # I played Paper
      my_total_score += 8
    when "Z" # I played Scissors
      my_total_score += 3
    else
      puts "My input was invalid!"
    end
  when "B" # Opponent played Paper
    case my_play
    when "X" # I played Rock
      my_total_score += 1
    when "Y" # I played Paper
      my_total_score += 5
    when "Z" # I played Scissors
      my_total_score += 9
    else
      puts "My input was invalid!"
    end
  when "C" # Opponent played Scissors
    case my_play
    when "X" # I played Rock
      my_total_score += 7
    when "Y" # I played Paper
      my_total_score += 2
    when "Z" # I played Scissors
      my_total_score += 6
    else
      puts "My input was invalid!"
    end
  else
    puts "Opponent's input was invalid!"
  end
end

puts my_total_score
