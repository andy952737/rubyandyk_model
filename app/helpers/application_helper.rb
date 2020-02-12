module ApplicationHelper

    def get_action(active) 
        if active === 1 
            ac = "active"
            return ac
        else
            ac = ""
            return ac
        end
    end

end
