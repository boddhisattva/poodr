# Original program(Version - 1) - http://roadbytes.me/blog/2015/08/24/poodr-ch-3.html

class Customer
  attr_reader :money, :bread, :meat, :mayonnaise
  def initialize(money, bread, meat, mayonnaise)
    @money      = money
    @bread      = bread
    @meat       = meat
    @mayonnaise = mayonnaise
  end

  def lunch
    Chef.new(bread, meat, mayonnaise).prepare
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


joe = Customer.new(54, "Beekays Glucose Wheat Bread", "Some meat item", "Fun Foods brand")
p joe.lunch
