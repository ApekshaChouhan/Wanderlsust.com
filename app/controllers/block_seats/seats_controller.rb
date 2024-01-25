class BlockSeats::SeatsController < ApplicationController
    def create
        @seat = BlockSeats::Seat.new(seat_params)
        
    end
    private
    def seat_params
        params.require(:seat).permit(:assignment, :total_seats, :reserved)
    end
end
