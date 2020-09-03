class ShiftsController < ApplicationController

  def index
    @users = User.all
    @shifts = Shift.all
    # @shift[:start_time] = Date.today.strftime('%Y-%m-%d')
  end
  
  def show
    @users = User.all
    @shifts = Shift.all
  end

  def new
    @shift = Shift.new
  end

  def create
    Shift.create(shift_params)
    @shifts = Shift.last(1)
  end

  private

  def shift_params
    params.require(:shift).permit(:date, :start_time, :end_time).merge(user_id: current_user.id)
  end

end
