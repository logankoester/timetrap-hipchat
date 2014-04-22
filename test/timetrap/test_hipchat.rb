gem "minitest"
require "minitest/autorun"
require "timetrap/hipchat"

module TestTimetrap; end

class TestTimetrap::TestHipchat < Minitest::Test
  def test_sanity
    flunk "write tests or I will kneecap you"
  end
end
