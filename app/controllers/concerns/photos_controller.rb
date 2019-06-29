class PhotosController < ApplicatonController
	def create
		@place = Place.find(params[:place_id])
		@place.photos.create(photos_params.merge(user: current_user))
		redirect_to place_path(@place)
		params.require(:photo).permit(:caption, :picture)
	end
end
