#!/usr/bin/env ruby

require_relative '../lib/unitwise/parse.rb'
require 'test/unit'

class TestQuery < Test::Unit::TestCase
  def test_parse
    assert_not_nil Unitwise.parse("10 g")
    assert_not_nil Unitwise.parse("1.3 g")
    assert_not_nil Unitwise.parse("10 ft.lb")
    assert_not_nil Unitwise.parse("10 m/s2")
  end

  def test_fail
    assert_nil Unitwise.parse("")
    assert_nil Unitwise.parse(nil)
    assert_nil Unitwise.parse("5")
    assert_nil Unitwise.parse("g")
    assert_nil Unitwise.parse("5 Not-A-Unit")
    assert_nil Unitwise.parse("5 kg s m")
  end
end
