class Company < ActiveRecord::Base
    has_many :freebie
    has_many :dev, through: :freebie

    def give_freebie(dev, item_name, value)
        new_freebie = Freebie.create(dev_id: dev.id, item_name: item_name, value: value)
    end

    def self.oldest_company
        self.all.min{|a, b| a.founding_year <=> b.founding_year}
    end
end
