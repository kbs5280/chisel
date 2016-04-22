gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel.rb'
require 'pry'

class ChiselTest < Minitest::Test

  # def setup
  #   @chisel = Chisel.new
  # end

  def test_it_takes_a_chunk
    expected_chunk = "This is my chunk. It has two lines."
    chisel = Chisel.new(expected_chunk)
    assert expected_chunk, chisel.markdown
  end

  def test_it_can_write_a_chunk
    expected_chunk = "Can it write."
    chisel = Chisel.new(expected_chunk)
    assert expected_chunk, chisel.write
  end

  def test_it_can_take_a_chunk_and_break_it_into_lines
    markdown = "This is a line.\nThis is the second line.\n# This is a header.\n ## This *is a* tough one."
    expected_chunk = ["This is a line.", "This is the second line.", "# This is a header.", " ## This *is a* tough one."]
    chisel = Chisel.new(markdown)
    assert expected_chunk, chisel.chunks_to_lines
  end

  def test_it_can_take_lines_of_markdown_to_lines_of_html
    chisel = Chisel.new("")
    chisel.markdown_to_html
  end

end
