class StovesController < ApplicationController
  before_action :set_user, only: %i(show create update destroy)
  before_action :set_customer, only: %i(search_customers)
  
  def index
    @stoves = Stove.all
  end
  
  def new
    @customers = Customer.all
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
  
  def search
    @customers = Customer.search(params[:search])
  end
  
  private
  
    def stove_params
       params.require(:stove).permit(:signup_at, :summary_1, :summary_2, :note)
    end
end
