class BarbecuesController < ApplicationController
  #SI no hay login no acceden a las barbacoas
  before_action :authenticate_user!
  
  def index
    @barbecues = Barbecue.order(:date)
  end

  def show
    # Don't add any code to this show action.
    # Implement your barbecue API in another action.
  end

  def showApi
    @bbq = Barbecue.find(params[:id])
    render json: @bbq
  end

  def new
    @bbq = Barbecue.new
  end

  def create
    bbq_params = params.require(:barbecue).permit(:title, :venue, :date)
    @bbq = Barbecue.new(bbq_params)

    unless @bbq.save
      render(:new)
    else
      redirect_to(barbecues_path)
    end
  end

  def join
    @bbq = Barbecue.find(params[:id])
    @user = current_user
  end


end
