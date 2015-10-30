require 'lib/fraccion.rb'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
  def setup
    @frac1 = Fraccion.new(2,3)
	@frac2 = Fraccion.new(3,4)
  end
  def tear_down
    # nothing
  end
  def test_simple
    assert_equal("(17/12)", (@frac1+@Frac2).to_s)
    assert_equal("(1/12)", (@frac1-@Frac2).to_s)
    assert_equal("(1/2)", (@frac1/@Frac2).to_s)
    assert_equal("(8/9)", (@frac1*@Frac2).to_s)
  end
  def test_type_check
    assert_raise(RuntimeError) {Fraccion.new('1','1')}
  end
  def test_failure
    assert_equal("(0/0)", (@frac1+@frac2).to_s)
  end
end
