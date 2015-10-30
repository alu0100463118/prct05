#require 'mcd'

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
  #  div = Mcd(@numerador, @denominador)
    div = a.abs, b.abs #[a.abs, b.abs]
    while div.min != 0
      div = div.min, div.max%div.min
    end
    @a = @a / div
    @b = @b / div
  end
  def to_s
	  salida="(#{@a} / #{@b})"
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
