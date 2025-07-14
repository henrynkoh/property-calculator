class CalculatorController < ApplicationController
  def index
    @property = Property.new
    @properties = Property.all.order(created_at: :desc).limit(10)
    
    if params[:property].present?
      @property = Property.new(property_params)
      if @property.save
        flash[:notice] = "Property saved successfully!"
        redirect_to root_path
      else
        flash[:alert] = "Error saving property: #{@property.errors.full_messages.join(', ')}"
      end
    end
    
    # Initialize calculation variables
    @down_payment_percentages = [3.5, 5, 10, 15, 20, 25, 30]
    @loan_terms = [15, 20, 30]
    @interest_rates = [5.5, 6.0, 6.5, 7.0, 7.5, 8.0]
  end

  def calculate
    @property = Property.new(property_params)
    @down_payment_percentages = [3.5, 5, 10, 15, 20, 25, 30]
    @loan_terms = [15, 20, 30]
    @interest_rates = [5.5, 6.0, 6.5, 7.0, 7.5, 8.0]
    
    if @property.valid?
      @calculations = calculate_mortgage_details(@property)
      render :index
    else
      flash[:alert] = "Please correct the errors below."
      render :index
    end
  end

  private

  def property_params
    params.require(:property).permit(:listing_price, :mls_number, :address, :beds, :baths, :sqft, :url, :image, :input_mode, :down_payment_percent, :loan_term, :interest_rate, :property_tax_rate, :insurance_rate, :hoa_fees)
  end

  def calculate_mortgage_details(property)
    price = property.listing_price.to_f
    down_payment_percent = (params[:down_payment_percent] || 20).to_f
    loan_term = (params[:loan_term] || 30).to_i
    interest_rate = (params[:interest_rate] || 6.5).to_f
    property_tax_rate = (params[:property_tax_rate] || 1.25).to_f
    insurance_rate = (params[:insurance_rate] || 0.5).to_f
    hoa_fees = (params[:hoa_fees] || 0).to_f

    down_payment = price * (down_payment_percent / 100)
    loan_amount = price - down_payment
    monthly_rate = interest_rate / 100 / 12
    total_payments = loan_term * 12

    # Calculate monthly principal and interest
    if monthly_rate > 0
      monthly_pi = loan_amount * (monthly_rate * (1 + monthly_rate)**total_payments) / ((1 + monthly_rate)**total_payments - 1)
    else
      monthly_pi = loan_amount / total_payments
    end

    # Calculate taxes and insurance
    annual_taxes = price * (property_tax_rate / 100)
    monthly_taxes = annual_taxes / 12
    annual_insurance = price * (insurance_rate / 100)
    monthly_insurance = annual_insurance / 12

    # Total monthly payment (PITI)
    monthly_piti = monthly_pi + monthly_taxes + monthly_insurance + hoa_fees

    {
      price: price,
      down_payment_percent: down_payment_percent,
      down_payment: down_payment,
      loan_amount: loan_amount,
      loan_term: loan_term,
      interest_rate: interest_rate,
      monthly_pi: monthly_pi,
      monthly_taxes: monthly_taxes,
      monthly_insurance: monthly_insurance,
      hoa_fees: hoa_fees,
      monthly_piti: monthly_piti,
      annual_taxes: annual_taxes,
      annual_insurance: annual_insurance,
      total_interest: (monthly_pi * total_payments) - loan_amount
    }
  end
end 