
def display_ascii
    File.readlines('radiation.txt') do |line|
      line
    end
  end
  puts display_ascii

  puts 'Welcome to Radiation Valley: Use Your Jetpack To SURVIVE AT ALL COSTS'
  puts 'Enter Your Name'
  player_name = gets.chomp.capitalize

  lives = 100
  immune = 0
puts "Current Status for #{player_name}"
puts "Lives: #{lives} %"

while lives > 0 && immune < 100
    puts "Which Direction Would You Like To Move?"
    puts "Type either left, right, up, or down to fly"
    puts "--------------------------------"
    movement = gets.chomp.downcase

  if movement == "up"
    yourNumber = 27
    anotherNumber = rand 25..30
    totalPill = rand 25..30
    puts "GAIN IMMUNITY PILLS! GAIN #{totalPill}%"
      immune += totalPill
      puts "Immune #{immune} %"
    if yourNumber >= anotherNumber
    puts "EXPOSED TO RADIATION! LOSE #{anotherNumber}%"
    lives -= anotherNumber
    puts "Lives: #{lives} %"
    else 
      puts "YOU'RE NOT EXPOSED!!!!"
    end
  elsif movement == "right"
      yourNumber = 7
      anotherNumber = rand 5..10
      totalPill = rand 5..10
      puts "GAIN A IMMUNITY PILLS! GAIN #{totalPill}%"
        immune += totalPill
        puts "Immune #{immune} %"
      if yourNumber >= anotherNumber
      puts "EXPOSED TO RADIATION! LOSE  #{anotherNumber}%"
      lives -= anotherNumber
      puts "Lives: #{lives} %"
      else 
        puts "YOU'RE NOT EXPOSED!!!!"
      end
  elsif movement == "down"
        yourNumber = 2
        anotherNumber = rand 2..5
        totalPill = rand 3..7
        puts "GAIN A IMMUNITY PILLS! GAIN #{totalPill}%"
          immune += totalPill
          puts "Immune #{immune} %"
        if yourNumber >= anotherNumber
        puts "EXPOSED TO RADIATION! LOSE #{anotherNumber}%"
        lives -= anotherNumber
        puts "Lives: #{lives} %"
        else 
          puts "YOU'RE NOT EXPOSED!!!!"
        end
  elsif movement == "left"
          yourNumber = 17
          anotherNumber = rand 15..20
          totalPill = rand 15..20
          puts "GAIN A IMMUNITY PILLS! GAIN #{totalPill}%"
            immune += totalPill
            puts "Immune #{immune} %"
          if yourNumber >= anotherNumber
          puts "EXPOSED TO RADIATION! LOSE  #{anotherNumber}%"
          lives -= anotherNumber
          puts "Lives: #{lives} %"
          else 
            puts "YOU'RE NOT EXPOSED!!!!"
          end 
  end
  if lives <= 0 
    puts "YOU'RE DEAD MOFO!"
  elsif immune >= 100
    puts "YOU ARE A LUCKY MOFO!"
  end
end