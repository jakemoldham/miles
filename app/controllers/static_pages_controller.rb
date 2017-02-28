class StaticPagesController < ApplicationController
  def index
    @guest = Guest.new
  end

  def guest
    Guest.create(coming: params[:coming], name: params[:name], guests: params[:guests])
    redirect_to root_path, notice: "Thank You!"
  end

  def coming
    @guests = Guest.all.where(coming: 1)
    @not_guests = Guest.all.where(coming: nil)
    all_guests = Guest.all.where(coming: 1).map{|g| g.guests}
    @sum_guests = all_guests.sum
    all_guests = Guest.all.where(coming: nil).map{|g| g.guests}
    @sum_not_guests = all_guests.sum
  end
end
