class Merchant
  attr_reader :id, :name, :sales_engine, :created_at
  # attr_accessor :items

  def initialize(info, merchant_repository)
    @id = info[:id].to_i
    @name = info[:name]
    @created_at = Time.parse(info[:created_at])
    @merchant_repository = merchant_repository
    # @items = []
  end

  def items
    @merchant_repository.find_all_by_merchant_id_in_item_repo(@id)
  end

  def invoices
    @merchant_repository.find_all_by_merchant_id_in_invoice_repo(@id)
  end

  def customers
    customers = []
    invoices.each do |invoice|
      customers << @merchant_repository.find_all_customers(invoice.customer_id)
    end
    customers.compact.uniq
  end

end
