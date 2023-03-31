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
    brand: params[:brand], 
    model: params[:model], 
    color: params[:color], 
    year: params[:year] 
  )
  @car.save
  render :show
  end

  def update
    @car = Car.find_by(id: params[:id])
    @car.brand = params[:brand] || @car.brand
    @car.model = params[:model] || @car.model
    @car.color = params[:color] || @car.color
    @car.year = params[:year] || @car.year
    @car.save
    render :show
  end

  def destroy
    @car = Car.find_by(id: params[:id])
    @car.destroy
    render json: {message: "Car has been successfully removed"}
  end
end
