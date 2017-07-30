puts "welcome to Ruby Vitamin!"

loop do
    input = gets.chomp

    case input
    when "quit"
        puts "Bye!"
        break
    end
end