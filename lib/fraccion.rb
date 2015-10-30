class Complejo
  attr_reader :a, :b
  attr_writer :a, :b
  def initialize(a, b)
    raise unless a.is_a?(Numeric)
    raise unless b.is_a?(Numeric)
    @a, @b = a, b
  end
  def to_s
	salida="(#{@a}"
	if @b<0
		salida=salida+"#{@b}i)"
	elsif @b>0
		salida=salida+"+#{@b}i)"
	else
		salida=salida+')'
	end
	salida
  end
  def + (other)
    Complejo.new(@a + other.a, @b + other.b)
  end
  def - (other)
    Complejo.new(@a - other.a,@b - other.b)
  end
end


