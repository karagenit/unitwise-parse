require 'unitwise'

# Unitwise is a library for performing mathematical operations and conversions
# on all units defined by the [Unified Code for Units of Measure(UCUM).
module Unitwise

  # Parse a string into a unitwise value
  # @param value [String]
  # @return [Unitwise::Measurement]
  # @api public
  def self.parse(value)
    values = value.split(' ')
    return nil if values.length != 2
    return nil unless valid? values[1]
    Unitwise::Measurement.new(values[0].to_f, values[1])
  end
end
