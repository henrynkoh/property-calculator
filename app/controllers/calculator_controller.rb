class CalculatorController < ApplicationController
  def index
    @property = Property.new
    @properties = Property.all
    if params[:property].present?
      @property = Property.new(property_params)
      if @property.save
        flash[:notice] = "Property saved successfully!"
      else
        flash[:alert] = "Error saving property: #{@property.errors.full_messages.join(', ')}"
      end
    end
  end

  private

  def property_params
    params.require(:property).permit(:listing_price, :mls_number, :address, :beds, :baths, :sqft, :url, :image, :input_mode)
  end
end 