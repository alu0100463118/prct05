

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
    div = @a.gcd(@b)
    @a = @a / div
    @b = @b / div
  end
  def to_s
	  salida="(#{@a}/#{@b})"
	  salida
  end
  def + (frac)
    Fraccion.new(@a*frac.b + frac.a*@b, @b*frac.b)
  end
  def - (frac)
    Fraccion.new(@a*frac.b - frac.a*@b, @b*frac.b)
  end
  def * (frac)
	  Fraccion.new(frac.a * @a, frac.b * @b)
  end
	def / (frac)
		Fraccion.new(@a*frac.b,@b*frac.a)
	end
end
