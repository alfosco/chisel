require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest < Minitest::Test

  def test_chisel_exists
    assert Chisel.new
  end

  def test_chisel_reads_a_file
    file = Chisel.new("my_input.md", "r")
    incoming_text = file.read
    assert my_input.md != nil
  end

  def test_chisel_writes_html
  skip
    file = Chisel.new("my_output.html", "w")
    incoming_text = file.write
    assert my_output.html != nil
  end

  def test_chisel_counts_input_lines
  skip
    file = Chisel.new("my_input.md", "r")
    incoming_text = file.read
    
    assert_equal 6, file.count_input_lines
  end

  def test_chisel_counts_output_lines
  skip
    file = Chisel.new("my_output.html", "w")
    incoming_text = file.write
    
    assert_equal 6, file.count_output_lines
  end

end