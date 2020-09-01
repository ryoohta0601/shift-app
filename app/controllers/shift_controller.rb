class ShiftController < ApplicationController

  def index
    
    @user = User.find(1)
  end
  
  def show
    @shifts = Shift.all
  end

  def new
    @shift = Shift.new
  end

  def create
    Shift.create(shift_params)
    redirect_to shift_path
  end

  private

  def shift_params
    params.require(:shift).permit(:date, :start_time, :end_time, :user_id)
  end
end
