module LearningModule
    def self.modules
        # return array of all filenames in /modules without .rb extension
        Dir.entries("./app/modules").select { |item| item.include? ".rb" }.map { |item| item.chomp ".rb" }
    end
end