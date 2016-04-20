gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel.rb'
require 'pry'

class ChiselTest < Minitest::Test

  def test_it_can_read_a_text_sample
    chisel = Chisel.new
    assert_equal "This is the first line of the paragraph. This is the second line of the paragraph.", chisel.html_string
  end

end
