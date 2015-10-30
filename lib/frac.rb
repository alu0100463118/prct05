require 'mcd'

class Fraccion
  attr_reader :a, :b
  attr_writer :a, :b
  def initialize(a, b)
    raise unless a.is_a?(Numeric)
    raise unless b.is_a?(Numeric)
    @a, @b = a, b
    self.reduce()
  end
  def reduce()                # Método encargado de la simplificación del objeto fracción que lo llama
    div = Mcd(@numerador, @denominador)
    @a = @a / div
    @b = @b / div
  end
  def to_s
	  salida="(#{@a}"
  	if @b!=1
  		salida=salida+" / #{@b})"
  	else
  		salida=salida+')'
  	end
  	salida
  end
  def + (frac)
    Fraccion.new(@a*frac.b + frac.a*@b, @b*frac.b)
  end
  def - (frac)
    Fraccion.new(@a*frac.b - frac.a*@b, @b*frac.b)
  end
  def * (frac)
		if (frac.is_a?(Fraccion))
			Fraccion.new((@a *frac.a) - (@b * frac.b), (@a * frac.b) + (@b * frac.a))
		else
			Fraccion.new(frac * @a, frac * @b)
		end
	end
	def / (frac)
		Fraccion.new(@a*frac.b,@b*frac.a)
	end
end
