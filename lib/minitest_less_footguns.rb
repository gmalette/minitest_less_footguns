require "minitest_less_footguns/version"
require "minitest"

module MinitestLessFootguns
  def assert(predicate, message_or_equal = nil, message: nil)
    if !message_or_equal.nil? && !caller_locations.first.base_label.match(/^(assert|refute|flunk)/)
      raise(
        ArgumentError,
        "usage: assert(predicate, message: error_message),\n"\
        "unless you meant assert_equal?"
      )
    end
    super(predicate, message || message_or_equal)
  end
end

Minitest::Test.prepend(MinitestLessFootguns)
