class CustomerSerializer
  def self.format_customer(customer)
    {
      data:
        # if customer.nil?
        #   {}
        # else
          {
            id: customer.id,
            type: 'customer',
            attributes: {
              subscriptions: customer.subscriptions.map do |subscription|
                              {
                                title: subscription.package.title,
                                status: subscription.status
                              }
                             end
            }
          }
        # end
    }
  end
end
