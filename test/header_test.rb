require 'minitest/autorun'
require 'minitest/pride'
require './lib/header'

class HeaderTest < Minitest::Test

  def test_header_exists
    assert Header.new
  end

  def test_header_converts_header_one
    header = Header.new
    assert_equal "<h1>header one</h1>", header.convert_header("#header one")
  end

  def test_header_converts_header_five
    header = Header.new
    assert_equal "<h5>header five</h5>", header.convert_header("#####header five")
  end

  def test_it_converts_paragraph_to_html
    header = Header.new
    assert_equal "<p>This is the first line of the paragraph.</p>", header.convert_header("This is the first line of the paragraph.")
  end

  def test_it_converts_single_line_break_to_one_paragraph
    header = Header.new
    assert_equal "<p>This is the first line of the paragraph.""\n""This is the second line of the same paragraph.</p>", header.convert_header("This is the first line of the paragraph.""\n""This is the second line of the same paragraph.")
  end

  def test_it_converts_two_line_breaks_to_two_paragraphs
    header = Header.new
    assert_equal "<p>This is the first line of the first paragraph.</p>""\n""<p>This is the first line of the second paragraph.</p>", header.convert_header("This is the first line of the first paragraph.""\n\n""This is the first line of the second paragraph.")
  end

end
