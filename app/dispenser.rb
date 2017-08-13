class Dispenser
    def self.vitamins
        # return array of all filenames in /vitamins without .rb extension
        Dir.entries("./app/vitamins").select { |item| item.include? ".rb" }.map { |item| item.chomp ".rb" }
    end

    def selected_vitamin
        @selected_vitamin
    end

    def select_vitamin(vitamin_name)
        return false if vitamin_name.nil?
        return false unless Dispenser.vitamins.include? vitamin_name

        @selected_vitamin = vitamin_name
        return true
    end

    def exit_vitamin
        @select_vitamin = nil
    end
end