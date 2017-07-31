class Dispenser
    def self.modules
        # return array of all filenames in /modules without .rb extension
        Dir.entries("./app/vitamins").select { |item| item.include? ".rb" }.map { |item| item.chomp ".rb" }
    end

    def selected_module
        @selected_module
    end

    def select_module(module_name)
        return false if module_name.nil?
        return false unless Dispenser.modules.include? module_name

        @selected_module = module_name
        return true
    end
end