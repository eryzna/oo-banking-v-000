class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :balance


  def initialize(sender, receiver, amount)
    @sender=sender
    @receiver=receiver
    @amount=amount
    @status="pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    sender.balance 
    receiver.balance+self.amount
  end

end
