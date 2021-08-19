class Dev < ActiveRecord::Base
    has_many :freebie
    has_many :company, through: :freebie

    def received_one?(item_name)
        self.freebie.filter{|own_freebie|
            return true if item_name == own_freebie.item_name
        }
        false
    end

    def give_away(dev, freebie)
        Freebie.update(freebie.id, :dev_id => dev.id)
    end
end
