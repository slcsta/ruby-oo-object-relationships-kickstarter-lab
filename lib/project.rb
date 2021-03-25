class Project 

    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        pb = ProjectBacker.new(self, backer)
    end

    def backers
        pb = ProjectBacker.all.select do |backer|
            backer.project == self
        end

        pb.map do |b|
            b.backer
        end 
    end
end

# def back_project(project)
#     ProjectBacker.new(project, self)
# end

# def backed_projects
#     pb = ProjectBacker.all.select do |project| 
#         project.backer == self
#     end
    
#     pb.map do |p|
#         p.project
#     end
# end