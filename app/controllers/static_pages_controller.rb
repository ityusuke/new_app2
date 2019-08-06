class StaticPagesController < ApplicationController
  def home
  end

  def about
  end
  
  def search
      @search=Tour.page(params[:page]).search(params[:search])
  end
end
