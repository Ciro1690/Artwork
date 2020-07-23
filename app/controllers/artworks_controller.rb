class ArtworksController < ApplicationController
    def index
        render json: Artwork.all
    end

    def create
        artwork = Artwork.new(artwork_params)
        # replace the `user_attributes_here` with the actual attribute keys
        if artwork.save
            render json: artwork, status: :created
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        render json: Artwork.find(self.params[:id])
    end

    def update
        artwork = Artwork.find(params[:id])

        success = artwork.update(self.artwork_params)
        if success
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
        render json: artwork
    end

    private
    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end 