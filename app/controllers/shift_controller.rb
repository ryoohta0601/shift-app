class ShiftController < ApplicationController

  def index
    @user = User.find(1)
  end
  
  def show
  end

  def new
  end

  def create
    Shift.create(shift_params)
  end

  private

  def shift_params
    params.permit(:date, :start_time, :end_time, :user_id)
  end
end
