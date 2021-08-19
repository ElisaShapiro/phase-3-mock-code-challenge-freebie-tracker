class Company < ActiveRecord::Base
    has_many :freebie
    has_many :dev, through: :freebie
end
