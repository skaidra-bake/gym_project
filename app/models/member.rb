class Member < ApplicationRecord
    belongs_to :membership

    has_many :one_day_passes
    has_many :transactions
end
