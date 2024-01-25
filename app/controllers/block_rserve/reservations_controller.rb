class BlockRserve::ReservationsController < ApplicationController
  before_action :authorize_request, except: %i[create index]
    def create
      byebug
        @reserv = BlockRserve::Reservation.new(reserv_params)
        reserv_params[:destination].map |object|
        
      
        end
        
      end

      def reserv_params
        params.require(:reserv).permit(:start_point, :end_point, :destination)
      end
end
