class Transaction < ApplicationRecord
    belongs_to :member
    # can have many merch items
end
