class RidesController < ApplicationController
	def create
		@ride = Ride.create(ride_params)
		# @ride.take_ride
		
		redirect_to user_path(@ride.user), notice: @ride.take_ride
	end

	private

	def ride_params
		params.require(:ride).permit(:user_id, :attraction_id)
	end
end
