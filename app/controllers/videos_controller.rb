class VideosController < ApplicationController
  def index
    @video = Video.last
  end
end
