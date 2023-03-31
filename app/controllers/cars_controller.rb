class CarsController < ApplicationController

  def show
  @car = Car.find_by(id: params[:id])
  render :show
  end

  def index
  @cars = Car.all
  render :index
  end
end
