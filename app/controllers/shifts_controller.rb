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

  def edit
    @shift = Shift.find(params[:id])
  end

  def update
    @shift = Shift.find(params[:id])
    if @shift.update(shift_params)
      redirect_to shifts_path
    else
      render 'edit'
    end
  end

  def destroy
    @shift = Shift.find(params[:id])
    @shift.destroy
    redirect_to root_path, notice:"削除しました"
  end


  private

  def shift_params
    params.require(:shift).permit(:start_time, :out_time).merge(user_id: current_user.id)
  end

end
