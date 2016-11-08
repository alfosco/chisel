require 'minitest/autorun'
require 'minitest/pride'
require './lib/converter'

class ConverterTest < Minitest::Test

  def test_converter_exists
    assert Converter.new
  end

  def test_converter_converts_header_one
    converter = Converter.new
    assert_equal "<h1>header one</h1>", converter.convert_header("#header one")
  end

  def test_converter_converts_header_five
    converter = Converter.new
    assert_equal "<h5>header five</h5>", converter.convert_header("#####header five")
  end

  def test_converter_converts_paragraph_to_html
    converter = Converter.new
    assert_equal "<p>This is the first line of the paragraph.</p>", converter.convert_paragraph("This is the first line of the paragraph.")
  end

  def test_converter_converts_single_line_break_to_one_paragraph
    converter = Converter.new
    assert_equal "<p>This is the first line of the paragraph.""\n""This is the second line of the same paragraph.</p>", converter.convert_paragraph("This is the first line of the paragraph.""\n""This is the second line of the same paragraph.")
  end

  def test_converter_converts_two_line_breaks_to_two_paragraphs
    converter = Converter.new
    assert_equal "<p>This is the first line of the first paragraph.</p>""\n""<p>This is the first line of the second paragraph.</p>", converter.convert_paragraph("This is the first line of the first paragraph.""\n\n""This is the first line of the second paragraph.")
  end

  def test_converter_does_not_mistake_headers_for_paragraphs
    converter = Converter.new
    assert_equal "#This stays a header one", converter.convert_paragraph("#This stays a header one")
  end
end
