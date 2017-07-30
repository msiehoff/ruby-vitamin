require_relative "app/messages.rb"
require_relative "app/learning_module.rb"

puts " --- Welcome to Ruby Vitamin! ---"

loop do    
    input = gets.chomp

    case input
    when "help"
        puts Messages.help
    when "modules"
        message = "#{Messages::NEW_LINE}"
        LearningModule.modules.each { |item| message += "#{item}#{Messages::NEW_LINE}"}
        puts message
    when "quit"
        puts "Bye!"
        break
    end
end