class BlockRserve::Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :seat
end
