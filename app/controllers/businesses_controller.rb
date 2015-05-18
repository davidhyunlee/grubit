class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def show
    # Google Maps API
    # url = "https://maps.googleapis.com/maps/api/js?key="
    # key = ENV['GOOGLE_MAPS']
    # @endpoint = url + key

    @business = Business.find(params[:id])
    @menus = @business.menus.all
    @reviews = @business.reviews.all
  end

  def edit
    @business = Business.find(params[:id])
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    if @business.save
        redirect_to business_path(@business)
    else
        render new
    end
  end

  def update
    @business = Business.find(params[:id])
    if @business.update_attributes(business_params)
        redirect_to business_path
    else
        render edit
    end
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    redirect_to businesses_path
  end

  private
  def business_params
    params.require(:business).permit(:name, :address, :address_2, :city, :country_code, :postal_code, :state_code, :phone, :rating, :about)
  end

end
