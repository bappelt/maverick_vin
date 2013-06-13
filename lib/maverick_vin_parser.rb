require 'vin_constants'

# This class implements parsing of Vehicle Identification Numbers (VINs)
# for Ford Mavericks and Mercury Comets from 1970-77
#
class MaverickVinParser

  include VinConstants

  ArgumentError = Class.new(ArgumentError)

  def initialize
    plant_code_regex = list_to_regex(PLANT_CODES)
    body_code_regex = list_to_regex(BODY_CODES)
    engine_code_regex = list_to_regex(ENGINE_CODES)
    @regex_main = /([0-7])(#{plant_code_regex})(#{body_code_regex})(#{engine_code_regex})([0-9]{6})/
  end

  #
  # Parses the provided VIN
  #
  # @param vin [string] The VIN to be parsed
  # @return [hash] data parsed from the VIN
  # @raise MaverickVinParser::ArgumentError if the VIN is invalid
  # @example
  #   MaverickVinParser.new.parse('0X91U100647') #=> "{:year=>1970, :plant=>"St. Thomas", :body=>"Maverick 2-Door Sedan Standard", :engine=>"170ci 6-Cylinder 1 bbl", :unit_number=>100647}"
  #
  def parse(vin)
    @regex_main.match(vin) do
      return {
          year: 1970+$1.to_i,
          plant: PLANT_CODES[$2.to_sym],
          body: BODY_CODES[$3],
          engine: ENGINE_CODES[$4.to_sym],
          unit_number: $5.to_i
      }
    end


    raise ArgumentError.new("#{vin} does not appear to be a valid Maverick VIN")


  end

  private

  def list_to_regex(list)
    keys = list.keys
    keys.collect! { |key| key.length > 1 ? "(?:#{key})" : key }
    /#{keys.join('|')}/
  end


end