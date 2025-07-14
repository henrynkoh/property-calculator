module CalculatorHelper
  def calculate_pi(loan_amount)
    rate = 0.065 / 12 # 6.5% annual interest rate
    n = 360 # 30 years
    loan_amount * (rate * (1 + rate)**n) / ((1 + rate)**n - 1)
  rescue ZeroDivisionError
    0
  end
end 