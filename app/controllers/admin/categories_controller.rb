# frozen_string_literal: true

# module/class Admin::CategoriesController
class Admin::CategoriesController < Admin::ApplicationController
  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @page_title = 'Add Category'
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category Created'
      redirect_to admin_categories_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end
  private
  def category_params
    params.require(:category).permit(:name)
  end
end
