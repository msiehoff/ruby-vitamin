module Messages
    COMMANDS = {
        help: "View list of Ruby Vitamin commands",
        quit: "Leave Ruby Vitamin",
        modules: "List out learning modules",
    }

    NEW_LINE = "\n"

    def self.help
        commands = NEW_LINE
        COMMANDS.each do |command, desc|
            commands += "#{command}: #{desc} #{NEW_LINE}"
        end

        "#{commands} #{NEW_LINE}"
    end
end