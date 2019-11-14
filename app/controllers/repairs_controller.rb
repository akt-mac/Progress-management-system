class RepairsController < ApplicationController
  before_action :set_repair, only: %i(show edit update destroy edit_progress edit_reminder)
  
  def index
    @repairs = Repair.all
    if params[:search] == ""
      redirect_to repairs_url
      flash[:danger] = "得意先名を入力してください。"
    else
      @page = 20
      @repairs = Repair.paginate(page: params[:page], per_page: @page).
                      search(params[:search]).
                      order(reminder: :DESC, progress: :ASC, signup_at: :DESC, created_at: :DESC)
      if params[:search].present?
        flash.now[:success] = "検索結果：#{@repairs.count}件" 
      end
    end
  end
  
  def index_page
    @page = params[:per]
    @repairs = Repair.paginate(page: params[:page], per_page: @page).
                    order(reminder: :DESC, progress: :ASC, signup_at: :DESC, created_at: :DESC)
    render :index
  end
  
  def new
    @repair = Repair.new
  end
  
  def show
  end
  
  def create
    @repair = Repair.new(repair_params)
    if @repair.save
      redirect_to repairs_url
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @repair.update_attributes(repair_params)
      if @repair.progress == "1"
        @repair.reminder = "0"
        @repair.contacted = "1"
        @repair.save
        flash[:success] = "#{@repair.customer_name}の情報を更新しました。【✓完了】"
      else
        flash[:success] = "#{@repair.customer_name}の情報を更新しました。"
      end
      redirect_to repairs_url
    else
      render :edit
    end
  end
  
  def edit_progress
  end
  
  def edit_reminder
  end
  
  def destroy
  end
  
  private
  
    def repair_params
       params.require(:repair).permit(:signup_at,
                                     :summary_1,
                                     :summary_2,
                                     :progress,
                                     :customer_name,
                                     :phone_number,
                                     :mobile_number,
                                     :address,
                                     :note,
                                     :reminder,
                                     :machine_type,
                                     :contacted)
    end
end
