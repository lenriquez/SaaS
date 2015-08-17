class Dessert
  attr_accessor :name
  attr_accessor :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    @calories < 200
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    @flavor = flavor
    super name, calories
  end
  
  def delicious?
    flavor.casecmp("black licorice") == 0 ? false : true
  end
end


# returns true if a dessert has less than 200 calories
jb = JellyBean.new("test", 100, "test2" )
puts jb.healthy? ? "Test Healty (Passed)" : "Test Healty (Failed)" 
puts jb.delicious? ? "Test Delicious (Passed)" : "Test Delicius (Failed)"

jb = JellyBean.new("test", 300, "black licorice" )
puts !jb.healthy? ? "Test Healty (Passed)" : "Test Healty (Failed)"
puts !jb.delicious? ? "Test Delicious (Passed)" : "Test Delicius (Failed)"

