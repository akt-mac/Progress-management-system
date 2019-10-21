class StovesController < ApplicationController
  
  def index
    @stoves = Stove.all
  end
  
  def new
    @stove = Stove.new
  end
  
  def create
  end
  
  def update
  end
end
