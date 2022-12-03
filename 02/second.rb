my_total_score = 0

File.open("./input.txt").each do |line|
  opponent_play = line.chars[0]
  my_play = line.chars[2]

  case opponent_play
  when "A" # Opponent played Rock
    case my_play
    when "X" # I need to lose (play Scissors)
      my_total_score += 3
    when "Y" # I need to draw (play Rock)
      my_total_score += 4
    when "Z" # I need to win (play Paper)
      my_total_score += 8
    else
      puts "My input was invalid!"
    end
  when "B" # Opponent played Paper
    case my_play
    when "X" # I need to lose (play Rock)
      my_total_score += 1
    when "Y" # I need to draw (play Paper)
      my_total_score += 5
    when "Z" # I need to win (play Scissors)
      my_total_score += 9
    else
      puts "My input was invalid!"
    end
  when "C" # Opponent played Scissors
    case my_play
    when "X" # I need to lose (play Paper)
      my_total_score += 2
    when "Y" # I need to draw (play Scissors)
      my_total_score += 6
    when "Z" # I need to win (play Rock)
      my_total_score += 7
    else
      puts "My input was invalid!"
    end
  else
    puts "Opponent's input was invalid!"
  end
end

puts my_total_score
