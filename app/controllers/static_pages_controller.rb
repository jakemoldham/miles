class StaticPagesController < ApplicationController
  def index
    @guest = Guest.new
  end

  def guest
    Guest.create(coming: params[:coming], name: params[:name], guests: params[:guests])
    redirect_to root_path, notice: "WE ARE GOING TO PARTAY!"
  end
end
