class Sale < ApplicationRecord
    belongs_to :member

    # can have many merch items
    has_and_belongs_to_many :merchandises

    validate :fuck_off

    def fuck_off
        errors.add(:base, "go away") 
    end
end
