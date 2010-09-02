require "sevendigital"

class AlbumRecommenderController < ApplicationController
  def index
    @sevendigital_client = Sevendigital::Client.new
    latest_release_id = @sevendigital_client.release.get_by_date.first.id

    begin
      random_release_id = rand(latest_release_id)
      begin
        @release = @sevendigital_client.release.get_details(random_release_id, {:imageSize=>"350"})
      rescue Sevendigital::SevendigitalError;  end
    end while !@release

    track = @release.get_tracks.first
    @track_preview_url = "http://previews.7digital.com/clips/34/#{track.id}.clip.mp3"
    
  end
end
