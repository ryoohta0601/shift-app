class ShiftController < ApplicationController

  def index
  end
  
  def show
    @shift = Shift.find(params[:id])
  end

  def new
  end

  private

  def shift_params
      params.require(:shifts).permit(:name)
  end
end
