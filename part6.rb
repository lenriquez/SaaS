class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019,
		 'dollar' => 1 }

  def in currency
    currency = currency.to_s 
    self / @@currencies[currency]
  end

  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      return self * @@currencies[singular_currency]
    else
      super
    end
  end
end

class String
  def palindrome?
    self.casecmp(self.reverse) == 0
  end
end

module Enumerable
  def palindrome?
    self.join.casecmp(self.reverse.join) == 0 
  end
end


puts 1.euro.in(:yen)
puts "ana".palindrome?
puts "test".palindrome?
puts [1,2,3,2,1].palindrome?
