class CarsController < ApplicationController

  def show
  @car = Car.find_by(id: params[:id])
  render :show
  end

  def index
  @cars = Car.all
  render :index
  end

  def create
  @car = Car.new(
    brand: params[:title], 
    model: params[:model], 
    color: params[:color], 
    year: params[:year] 
  )
  @car.save
  render :show
  end
end
