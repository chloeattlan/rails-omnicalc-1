class CalculatorController < ApplicationController
  def square
    @val = params['value']&.to_f
    render({ :template => "view_layouts/square"})
  end
  def square_result
    @val = params['value']&.to_f
    @result = @val**2
    render({ :template => "view_layouts/square_results"})
  end
  def root
    @val = params['value']&.to_f
    render({ :template => "view_layouts/root"})
  end
  def root_result
    @val = params['value']&.to_f
    @result = Math.sqrt(@val)
    render({ :template => "view_layouts/root_result"})
  end
  def payment
    @rate = params["user_apr"]&.to_f
    @num_years = params["user_years"]&.to_f
    @pv = params["user_pv"]&.to_f
    render({ :template => "view_layouts/payment"})
  end
  def payment_result
    @rate = params["user_apr"]&.to_f
    @num_years = params["user_years"]&.to_f
    @pv = params["user_pv"]&.to_f
    r = @rate/100/12
    n = @num_years*12
    num = r*@pv
    denom = 1 - (1 + r) ** (-n)
    @payment = num/denom
    render({ :template => "view_layouts/payment_result"})
  end
end
