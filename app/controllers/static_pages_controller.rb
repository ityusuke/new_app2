# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home; end

  def about; end

  def rule; end

  def contact; end

  def privacy; end

  def search
    @search = Tour.page(params[:page]).search(params[:search])
    @q = Tour.includes(:user).ransack(params[:q])
    
  end
end
