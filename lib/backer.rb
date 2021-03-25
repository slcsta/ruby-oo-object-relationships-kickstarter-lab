require "pry"
class Backer 

    @@all = []

    attr_reader :name 

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        pb = ProjectBacker.all.select do |project| 
            project.backer == self
        end
        
        pb.map do |p|
            p.project
        end
    end
end

# book = Project.new("Ruby, Ruby, and More Ruby")
# magic = Project.new("Magic the Gathering Thing")
# steven = Backer.new("Steven")
# spencer = Backer.new("Spencer")

    

