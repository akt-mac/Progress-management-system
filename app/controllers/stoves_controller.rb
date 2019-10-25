class StovesController < ApplicationController
  before_action :set_user, only: %i(show update destroy)
  
  def index
    @stoves = Stove.all
  end
  
  def new
    @stove = Stove.new
  end
  
  def show
    @stove = Stove.find(params[:id])
  end
  
  def create
    @stove = Stove.new(stove_params)
    if @stove.save
      redirect_to stoves_url
    else
      render :new
    end
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
    def stove_params
       params.require(:stove).permit(:signup_at,
                                     :summary_1,
                                     :summary_2,
                                     :customer_name,
                                     :phone_number,
                                     :mobile_number,
                                     :address,
                                     :note)
    end
end
