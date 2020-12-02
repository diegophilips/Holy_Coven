class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    # @user = current_user
    # @pro = User.find(params[:user_id])

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pro = User.find(params[:user_id])
    if @booking.save
      redirect_to user_booking_path(current_user, @booking), notice: 'Your booking has been created!'

    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])

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
    params.require(:booking).permit(:date)
  end
end
