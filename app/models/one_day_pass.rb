class OneDayPass < ApplicationRecord
    belongs_to :pass_category
    belongs_to :member
end
