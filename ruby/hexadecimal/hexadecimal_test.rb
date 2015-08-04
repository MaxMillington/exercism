#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'hexadecimal'

class HexadecimalTest < Minitest::Test
  def test_hex_1_is_decimal_1
    assert_equal 1, Hexadecimal.new('1').to_decimal
  end

  def test_hex_c_is_decimal_12
    assert_equal 12, Hexadecimal.new('c').to_decimal
  end

  def test_hex_10_is_decimal_16
    assert_equal 16, Hexadecimal.new('10').to_decimal
  end

  def test_hex_af_is_decimal_175
    assert_equal 175, Hexadecimal.new('af').to_decimal
  end

  def test_hex_100_is_decimal_256
    assert_equal 256, Hexadecimal.new('100').to_decimal
  end

  def test_hex_19ace_is_decimal_105166
    assert_equal 105_166, Hexadecimal.new('19ace').to_decimal
  end

  def test_invalid_hex_is_decimal_0
    assert_equal 0, Hexadecimal.new('carrot').to_decimal
  end

  def test_black
    assert_equal 0, Hexadecimal.new('000000').to_decimal
  end

  def test_white
    assert_equal 16_777_215, Hexadecimal.new('ffffff').to_decimal
  end

  def test_yellow
    assert_equal 16_776_960, Hexadecimal.new('ffff00').to_decimal
  end
end