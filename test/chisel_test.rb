require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest < Minitest::Test

  def test_chisel_exists
    assert Chisel.new
  end

  # def test_chisel_opens_a_file
  #   chisel = Chisel.new
  # end

  # def test_chisel_reads_a_file
  #   chisel = Chisel.new 
  # end

  # def test_chisel_writes_html

  # end

end