require 'test/unit'
require 'maverick_vin_parser'
require 'vin_constants'

class ParserTest < Test::Unit::TestCase

  def setup
    @parser = MaverickVinParser.new
  end

  def test_parser
    assert_equal( {year: 1970, plant: 'St. Thomas', body: 'Maverick 2-Door Sedan Standard', engine: '170ci 6-Cylinder 1 bbl', unit_number: 647},  @parser.parse('0X91U100647')  )
    assert_equal( {year: 1974, plant: 'Kansas City', body: 'Maverick 2-Door Sedan Standard', engine: '250ci 6-Cylinder 1 bbl', unit_number: 25113},  @parser.parse('4K91L125113')  )
  end

  def test_invalid

    ex = assert_raise MaverickVinParser::ArgumentError do
      @parser.parse('qwerty')
    end

    assert_equal 'qwerty does not appear to be a valid Maverick VIN', ex.message

  end

end