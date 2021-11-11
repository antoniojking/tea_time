class Api::V1::SubscriptionsController < ApplicationController
  def create
    package = Package.find(params[:package_id])
    customer = Customer.find(params[:customer_id])

    if package.nil? || customer.nil?
      render(json: ErrorSerializer.customer_does_not_exist, status: 404)
    else
      customer.subscriptions.create(package: package, price: params[:price], status: 1, frequency: params[:frequency])

      render(json: CustomerSerializer.format_customer(customer), status: :created)
    end
  end
end
