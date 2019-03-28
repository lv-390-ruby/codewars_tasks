# The fucnction duty_free(price, discount, holiday_cost)
# You will be given the high street price (normPrice), the duty free discount (discount) 
# and the cost of the holiday(holiday_cost).
def duty_free(price, discount, holiday_cost)
  (holiday_cost/(price*discount/100.0)).to_i
end
