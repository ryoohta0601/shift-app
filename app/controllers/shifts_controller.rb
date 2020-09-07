class ShiftsController < ApplicationController

  def index
    @users = User.all
    @shifts = Shift.all
  end
  
  def show
    @users = User.all
    @shift = Shift.find(params[:id])
  end

  def new
    @shift = Shift.new
  end

  def create
    Shift.create(shift_params)
    redirect_to shifts_path
  end

  private

  def shift_params
    params.require(:shift).permit(:start_time, :out_time).merge(user_id: current_user.id)
  end

end
