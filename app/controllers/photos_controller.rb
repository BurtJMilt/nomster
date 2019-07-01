class PhotosController < ApplicatonController

	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
	
	def create
		@place = Place.find(params[:place_id])
		@place.photos.create(photos_params.merge(user: current_user))
		redirect_to place_path(@place)
		
	end


	private

	def photo_params
		params.require(:photo).permit(:caption, :picture)

	end
end
