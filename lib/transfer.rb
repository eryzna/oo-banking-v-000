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
    count=0
    if sender.valid? && count >1
      sender.balance -= amount
      receiver.balance += amount
      self.status="complete"
      count+=1
    end
  end

end
