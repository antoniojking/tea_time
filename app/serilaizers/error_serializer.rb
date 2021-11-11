class ErrorSerializer
  def self.customer_does_not_exist
    {
      status: 404,
      message: "the specified customer does not exist"
    }
  end
end
