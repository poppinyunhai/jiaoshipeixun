class Admin::VideosController < Admin::BaseController
  def index
    @video = Video.last
  end
  def new
    @video = Video.new
  end

  def create
    @video = Video.create(params[:video])
    if @video.save
      redirect_to admin_videos_path
    else
      render "new"
    end
  end

  def edit
    @video = Video.last
  end

  def update
    @video = Video.last
    @video.update_attributes(params[:video])
    if @video.save
      redirect_to admin_videos_path
    else
      render "new"
    end
  end
end
