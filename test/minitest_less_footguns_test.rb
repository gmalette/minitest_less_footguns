require 'test_helper'

class TotoTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MinitestLessFootguns::VERSION
  end

  def test_it_raises_an_argument_error_for_bad_assert_use
    err = assert_raises(ArgumentError) do
      assert :symbol, :symbol
    end
    assert_match(/usage/, err.message)
  end

  def test_it_doesnt_raise_when_passing_kwarg
    assert :symbol, message: "all good"
  end
end
