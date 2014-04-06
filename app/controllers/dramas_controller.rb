class DramasController < ApplicationController

  def index
    @dramas = Drama.all    
  end

  def new
    @category = Category.find(params[:category_id])
    @drama = @category.dramas.new
  end

  def create
    @category = Category.find(params[:category_id])
    @drama = @category.dramas.new(drama_params)
    
    @drama.save!
    redirect_to root_path
  end

  def show
    @category = Category.find(params[:category_id])
    @drama = @category.dramas.find(params[:id])
    @episodes = @drama.episodes
  end

  private

  def drama_params
    params.require(:drama).permit!
  end
end
