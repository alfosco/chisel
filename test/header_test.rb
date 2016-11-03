require 'minitest/autorun'
require 'minitest/pride'
require './lib/header'

class HeaderTest < Minitest::Test

  def test_header_exists
    assert Header.new
  end

  def test_header_removes_pound_sign
    header = Header.new
    assert_equal "header one", header.remove_pound("#header one")
  end

  def test_header_removes_multiple_pound_signs
    header = Header.new
    assert_equal "header one", header.remove_pound("#####header one")
  end

  def test_header_converts_md_to_html_one_hash
  skip
    header = Header.new
    assert_equal "<h1>header one</h1>", header.convert_header("#header one")
  end

end
