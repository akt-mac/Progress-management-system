class RepairsController < ApplicationController
  
  def index
    @repairs = Repair.all
    # if params[:search] == ""
    #   redirect_to repairs_url
    #   flash[:danger] = "得意先名を入力してください。"
    # else
    #   @page = 20
    #   @repairs = repair.paginate(page: params[:page], per_page: @page).
    #                   search(params[:search]).
    #                   order(reminder: :DESC, progress: :ASC, signup_at: :DESC, created_at: :DESC)
    #   if params[:search].present?
    #     flash.now[:success] = "検索結果：#{@repairs.count}件" 
    #   end
    # end
  end
  
  # def index_page
  #   @page = params[:per]
  #   @repairs = Repair.paginate(page: params[:page], per_page: @page).
  #                   order(reminder: :DESC, progress: :ASC, signup_at: :DESC, created_at: :DESC)
  #   render :index
  # end
  
  def new
    @repair = Repair.new
  end
  
end
