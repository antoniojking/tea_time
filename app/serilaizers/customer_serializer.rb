class CustomerSerializer
  def self.format_customer(customer)
    {
      data:
        if customer.nil?
          {}
        else
          {
            id: customer.id,
            type: 'customer',
            attributes: {
              subscriptions: []
            }
          }
        end
    }
  end
end
