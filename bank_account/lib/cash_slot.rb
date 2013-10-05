class CashSlot

  attr_accessor :contents

  def dispense(amount)
    @contents = amount unless contents
  end
end