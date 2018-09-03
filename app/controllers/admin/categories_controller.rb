# frozen_string_literal: true

# module/class Admin::CategoriesController
class Admin::CategoriesController < Admin::ApplicationController
  def index
    @categories = Category.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
