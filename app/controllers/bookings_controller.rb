class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @user = User.find(params[:user_id])
    @pro = User.find(params[:pro_id])
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def show
    @booking = Booking.find(params[:id])
    @bookings = Booking.all
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Your booking was successfully modified'
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    flash[:notice] = "Your booking has been destroy"
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:user, :pro, :date)
  end
end
