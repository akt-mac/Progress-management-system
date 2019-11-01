class StovesController < ApplicationController
  before_action :set_user, only: %i(destroy)
  before_action :set_stove, only: %i(show edit update edit_progress)
  
  def index
    if params[:search] == ""
      redirect_to stoves_url
      flash[:danger] = "得意先名を入力してください。"
    else
      @page = 20
      @stoves = Stove.paginate(page: params[:page], per_page: @page).
                      search(params[:search]).
                      order(progress: "ASC", signup_at: "DESC", created_at: "DESC")
      if params[:search].present?
        flash[:success] = "検索結果：#{@stoves.count}件" 
      end
    end
  end

  def index_page
    @page = params[:per]
    @stoves = Stove.paginate(page: params[:page], per_page: @page).
                    order(progress: "ASC", signup_at: "DESC", created_at: "DESC")
    render :index
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
  
  def edit_progress
  end
  
  def update_progress
  end
  
  def destroy
  end
  
  private
  
    def stove_params
       params.require(:stove).permit(:signup_at,
                                     :summary_1,
                                     :summary_2,
                                     :progress,
                                     :customer_name,
                                     :phone_number,
                                     :mobile_number,
                                     :address,
                                     :note)
    end
end
