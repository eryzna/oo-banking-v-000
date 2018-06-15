class Transfer
  attr_accessor :sender, :receiver, :amount


  def initialize(sender, receiver, amount)
    @sender=receiver
    @receiver=receiver
    @amount=amount
    @status=pending
  end

end
