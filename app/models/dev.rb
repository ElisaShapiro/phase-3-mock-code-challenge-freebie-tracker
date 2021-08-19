class Dev < ActiveRecord::Base
    has_many :freebie
    has_many :company, through: :freebie

    def received_one?(item_name)
        self.freebie.filter{|own_freebie|
            if item_name == own_freebie.item_name
                return true
            else
                return false
            end
        }
    end

    def give_away(dev, freebie)
        Freebie.update(freebie.id, :dev_id => dev.id)
    end
end
