class Property < ApplicationRecord
  validates :listing_price, presence: true, numericality: { greater_than: 0 }
  validates :mls_number, presence: true
  validates :address, presence: true
  validates :beds, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :baths, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :sqft, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: "must be a valid URL" }
  validates :image, presence: true
end 