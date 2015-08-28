class Customer
  attr_reader :money, :preparer
  def initialize(money, preparer)
    @money      = money
    @preparer   = preparer
  end

  def lunch
    preparer.prepare
  end
end

class Chef
  attr_reader :meat, :mayonnaise, :bread
  def initialize(bread, meat, mayonnaise)
    @bread      = bread
    @meat       = meat
    @mayonnaise = mayonnaise
  end

  def prepare
    bread + "" + meat + "" + mayonnaise
  end
end

joe = Customer.new(54, Chef.new("Beekays Glucose Wheat Bread", "Some meat item", "Fun Foods brand"))
p joe.lunch