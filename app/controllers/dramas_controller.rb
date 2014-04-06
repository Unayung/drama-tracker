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
    @episodes = @drama.episodes.order(:play_date => :desc)
  end

  def edit
    @category = Category.find(params[:category_id])
    @drama = @category.dramas.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @drama = @category.dramas.find(params[:id])
    @drama.update_attributes(drama_params)

    redirect_to category_drama_path(@category, @drama)
  end

  private

  def drama_params
    params.require(:drama).permit!
  end
end
