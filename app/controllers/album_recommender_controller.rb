require "sevendigital"

class AlbumRecommenderController < ApplicationController


  def index
    latest_release_id = SEVENDIGITAL_CLIENT.release.get_by_date.first.id
    begin
      random_release_id = rand(latest_release_id)
      begin
        release = SEVENDIGITAL_CLIENT.release.get_details(random_release_id, {:imageSize=>"350"})
      rescue Sevendigital::SevendigitalError;
      end
    end while !release
  
    redirect_to "/release/#{release.id}"
  end

    def view
      @sevendigital_client = Sevendigital::Client.new

      @release = SEVENDIGITAL_CLIENT.release.get_details(params[:release_id], {:imageSize=>"350"})
      track = @release.get_tracks.first
      @track_preview_url = "http://previews.7digital.com/clips/34/#{track.id}.clip.mp3"

    end

  end
