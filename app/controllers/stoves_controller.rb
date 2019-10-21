class StovesController < ApplicationController
  before_action :set_user, only: %i(new show create update destroy)
  before_action :set_stove, only: %i(show create update destroy)
  
  def index
    @stoves = Stove.all
  end
  
  def new
    @stove = Stove.new
  end
  
  def show
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
    def stove_params
      params.require(:stove).permit(:note)
    end
end
