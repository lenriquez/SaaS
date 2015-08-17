class CartesianProduct
  include Enumerable  

  def initialize( collection1, collection2)
		@collection = Array.new
		collection1.each do |a| 
      collection2.each do |b|
      	@collection << [a,b]  
			end
	  end	
  end

  def each(&block)
		@collection.each do |elt|
		   yield elt
    end
  end 
end

c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }
