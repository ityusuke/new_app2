class StaticPagesController < ApplicationController
  def home
  end

  def about
  end
  
  def rule
  end
  
  def contact
  end
  
  def privacy
  end
  
  def search
      @search=Tour.page(params[:page]).search(params[:search])
  end
end
