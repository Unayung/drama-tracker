class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @dramas = @category.dramas
  end
end
