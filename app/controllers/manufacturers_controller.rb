class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      redirect_to manufacturers_path, notice: "Your record has been created successfully!"
    else
      flash[:notice] = "Your record could not be completed"
      render "new"
    end

  end

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end
end
