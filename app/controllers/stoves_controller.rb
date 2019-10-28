class StovesController < ApplicationController
  before_action :set_user, only: %i(show update destroy)
  before_action :set_stove, only: %i(show edit update)
  
  def index
    @stoves = Stove.all
  end
  
  def new
    @stove = Stove.new
  end
  
  def show
  end
  
  def create
    @stove = Stove.new(stove_params)
    if @stove.save
      redirect_to stoves_url
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @stove.update_attributes(stove_params)
      flash[:success] = "#{@stove.customer_name}の登録情報を更新しました。"
      redirect_to stoves_url
    else
      render :edit
    end
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
