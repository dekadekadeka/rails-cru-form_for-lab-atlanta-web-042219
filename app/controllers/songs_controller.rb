class SongsController < ApplicationController
    def new
        @song = Song.new
    end

    def index
        @song = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def create
        @song = Song.new(song_params)
        @song.save
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params)
        redirect_to song_path(@song)
    end

    private

    def song_params
        params.require(:song).permit!
    end
end
