# Text-based Game Challenge
# puts ' 


# '

def display_ascii
    File.readlines('radiation.txt') do |line|
      line
    end
  end
  puts display_ascii

  puts 'Welcome to Radiation Valley: Use your jetpack to SURVIVE AT ALL COSTS'
  puts 'Enter your name'
  player_name = gets.chomp.capitalize

  lives = 100

puts "Current Status for #{player_name}"
puts "Lives: #{lives} %"

while lives > 0
    puts "Which direction would you like to move"
    puts "Type to fly left, right, up, or down"

    movement = gets.chomp.downcase

  if movement == "up"
    puts "Exposed to radiation! lose 25%"
    lives -= 25
    puts "Lives: #{lives} %"
  end
end