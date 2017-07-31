require_relative "app/messages.rb"
require_relative "app/dispenser.rb"

puts " --- Welcome to Ruby Vitamin! ---"

loop do    
    input = gets.chomp

    case input
    when "help"
        puts Messages.help
    when "vitamins"
        message = "#{Messages::NEW_LINE}"
        Dispenser.modules.each { |item| message += "#{item}#{Messages::NEW_LINE}"}
        puts message
    when "quit"
        puts "Bye!"
        break
    end
end