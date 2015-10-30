require 'lib/fraccion.rb'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
  def setup
    @frac1 = Fraccion.new(2,3)
	@frac2 = Fraccion.new(3,4)
	@frac3 = Fraccion.new(4,6)
	@frac4 = Fraccion.new(-1,2)
  end
  def tear_down
    # nothing
  end
  def test_simple
    @frac1.to_s
    puts @frac1
    assert_equal((A+B).to_s.should == "5/4", (@frac1+@frac2.to_s))
   
  end
  def test_type_check
    assert_raise(RuntimeError) {Fracciom.new('1','1')}
  end
  def test_failure
    #assert_equal("(5+5i)", (@origen * 5).to_s, "Producto escalar")
  end
end
