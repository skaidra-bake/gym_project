class Merchandise < ApplicationRecord
    # one merch id can belong to many transactions
    has_and_belongs_to_many :transactions
end
