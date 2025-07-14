class AddCalculationFieldsToProperties < ActiveRecord::Migration[8.0]
  def change
    add_column :properties, :down_payment_percent, :decimal
    add_column :properties, :loan_term, :integer
    add_column :properties, :interest_rate, :decimal
    add_column :properties, :property_tax_rate, :decimal
    add_column :properties, :insurance_rate, :decimal
    add_column :properties, :hoa_fees, :decimal
  end
end
