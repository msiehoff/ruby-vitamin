class Dispenser
    def self.modules
        # return array of all filenames in /modules without .rb extension
        Dir.entries("./app/vitamins").select { |item| item.include? ".rb" }.map { |item| item.chomp ".rb" }
    end
end