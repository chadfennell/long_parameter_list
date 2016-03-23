gem 'minitest', '~> 5.8'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './climb.rb'

class ClimbTest < Minitest::Test
  extend Minitest::Spec::DSL

  def test_report
    expected =
    "Climber Name: Alex Honnold \n" \
    "Route Name: Bad Kitteh \n" \
    "Route Class: 5.6 \n" \
    "Route Average Rating: 3.5 \n" \
    "Route Coordinates: 36.135574,-115.42724 \n" \
    "Climb Rating: 3 \n" \
    "Climb Comments: Got stuck at the 15th crux"

    climb = Climb.new('Bad Kitteh', [4, 3, 2, 5], '5.6', 'Alex Honnold', 'Got stuck at the 15th crux', '3', '36.135574,-115.42724')
    assert_equal expected, climb.report
  end
end
