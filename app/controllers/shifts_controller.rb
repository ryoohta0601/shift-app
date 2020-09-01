class ShiftsController < ApplicationController

  def index
    @user = User.find(1)
  end
  
  def show
    @shifts = Shift.all
  end

  def new
  end

  def create
    Shift.create(shift_params)
    @shift = Shift.new
  end

  private

  def shift_params
    params.require(:shift).permit(:date, :start_time, :end_time).merge(user_id: current_user.id)
  end

end
