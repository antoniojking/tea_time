class Api::V1::CustomersController < ApplicationController
  def show
    customer = Customer.find(params[:id])

    if customer.nil?
      render(json: ErrorSerializer.customer_does_not_exist, status: 404)
    else
      render(json: CustomerSerializer.format_customer(customer), status: 200)
    end
  end
end
