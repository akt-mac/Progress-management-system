class CustomersController < ApplicationController
  
  def index
    @customers = Customer.paginate(page: params[:page],per_page: 20).search(params[:search])
  end
  
  def show
  end
  
  def new
    @customer = Customer.new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
end
