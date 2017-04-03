Spree::Order.class_eval do
  before_save :use_billing_address
  attr_accessor :use_billing
  before_validation :clone_shipping_address, if: :use_billing?

  def clone_shipping_address
    if ship_address && self.bill_address.nil?
      self.bill_address = ship_address.clone
    else
      if self.ship_address
        self.bill_address.attributes = self.ship_address.attributes.except('id', 'updated_at', 'created_at')
      else
        self.bill_address = Spree::Address.new
      end
    end
    true
  end

  def clone_billing_address
  end

  def use_billing_address
    self.use_billing = true
  end

end
