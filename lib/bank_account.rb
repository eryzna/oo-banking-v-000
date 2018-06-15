class BankAccount
  attr_accessor :balance, :status, :amount
  attr_reader :name

  def initialize(name, balance=1000, status="open")
    @name=name
    @balance=balance
    @status=status
  end

  def deposit(amount)
    self.balance+=amount
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    if status=="open" && balance >0
      self.valid?=true
    else
      !self.valid?
    end
  end

end
