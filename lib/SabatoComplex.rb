class Complejo
	def * (num)
		if (num.is_a?(Complejo))
			Complejo.new((@a *num.a) - (@b * num.b), (@a * num.b) + (@b * num.a))
		else
			Complejo.new(num * @a, num * @b)
		end
	end
	def / (num)
		divisor = (num.a * num.a) + (num.b * num.b)
		Complejo.new((@a*num.a + @b * num.b) / divisor, (@b * num.a - @a * num.b) / divisor)
	end
end
	
