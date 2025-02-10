Rails.application.routes.draw do
  get("/", { :controller => "calculator", :action => "square" })
  get("/square/new", { :controller => "calculator", :action => "square" })
  get("/square/results", { :controller => "calculator", :action => "square_result" })
  get("/square_root/new", { :controller => "calculator", :action => "root" })
  get("/payment/new", { :controller => "calculator", :action => "payment" })
  get("/payment/results", { :controller => "calculator", :action => "payment_result" })
end
