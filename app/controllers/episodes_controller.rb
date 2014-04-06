class EpisodesController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @drama = Drama.find(params[:drama_id])
    @episode = @drama.episodes.new
  end

  def create
    @drama = Drama.find(params[:drama_id])
    @episode = @drama.episodes.new(episode_params)

    @episode.save
    redirect_to category_drama_path(@drama.category, @drama)
  end

  private

  def episode_params
    params.require(:episode).permit!
  end
end
