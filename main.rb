require_relative "app/messages.rb"
require_relative "app/dispenser.rb"

def show_vitamins
    message = "#{Messages::NEW_LINE}----Vitamins----#{Messages::NEW_LINE}"
    vitamins = Dispenser.vitamins.each { |item| message += "#{item}#{Messages::NEW_LINE}"}
    puts message
end

puts " --- Welcome to Ruby Vitamin! ---"
dispenser = Dispenser.new

loop do    
    input = gets.chomp

    case input
    when "help"
        puts Messages.help
    when "vitamins"
        show_vitamins
    when "quit"
        puts "Bye!"
        break
    end

    if input.include? "exit vitamin"
        dispenser.exit_vitamin
        continue
    end

    if input.include? "select "
        if input.nil?
            puts " > please enter a vitamin name"
            show_vitamins
            continue
        end

        input.slice! "select "
        input.downcase!
        continue if dispenser.select_vitamin input

        puts " > sorry I could not find the vitamin #{input}#{Messages::NEW_LINE}"
        show_vitamins
    end
end