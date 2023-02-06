class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map { |audition| audition.name}
    end

    def locations
        self.auditions.map { |audition| audition.location}
    end

    def lead
        if auditions.find_by(hired: true)
        else "no actor has been hired for this role"
        end
    end

    def understudy
        auditions.select(hired: true).second
    end
end