class Item

    attr_accessor :title, :description
    def self.valid_date?(date_string)
        date = date_string.split("-")
        if date[0].length != 4 || date[1].length != 2 || date[2].length != 2
            return false
        end

        if date[1].to_i < 1 || date[1].to_i > 12
            return false
        end

        if date[2].to_i < 1 || date[2].to_i > 31
            return false
        end
        return true
    end

    def initialize(title, deadline, description)
        @title = title
        @description = description

        if Item.valid_date?(deadline)
            @deadline = deadline
        else
            raise "Invalid Date"
        end

    end

    def deadline
        @deadline
    end

    def deadline=(new_deadline)
        if Item.valid_date?(deadline)
            @deadline = new_deadline
        else
            raise "Invalid Date"
        end
    end



end