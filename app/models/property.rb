class Property < ApplicationRecord
  validates :listing_price, presence: true, numericality: { greater_than: 0 }
  validates :mls_number, presence: true, uniqueness: true, if: -> { mls_number.present? }
  validates :address, presence: true
  validates :beds, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :baths, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :sqft, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :url, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: "must be a valid URL" }, allow_blank: true
  
  # Optional fields for enhanced calculations
  validates :down_payment_percent, numericality: { greater_than: 0, less_than_or_equal_to: 100 }, allow_nil: true
  validates :loan_term, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
  validates :interest_rate, numericality: { greater_than: 0 }, allow_nil: true
  validates :property_tax_rate, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :insurance_rate, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :hoa_fees, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true

  def price_per_sqft
    return nil if listing_price.blank? || sqft.blank? || sqft == 0
    listing_price / sqft
  end

  def formatted_address
    address.present? ? address : "Address not provided"
  end

  def formatted_price
    ActionController::Base.helpers.number_to_currency(listing_price)
  end

  def formatted_price_per_sqft
    return "N/A" if price_per_sqft.nil?
    ActionController::Base.helpers.number_to_currency(price_per_sqft)
  end
end 