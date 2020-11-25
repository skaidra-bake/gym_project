class Transaction < ApplicationRecord
    belongs_to :member

    # can have many merch items
    has_and_belongs_to_many :merchandises
end
