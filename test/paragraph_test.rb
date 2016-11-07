require 'minitest/autorun'
require 'minitest/pride'
require './lib/paragraph'

class ParagraphTest < Minitest::Test

  def test_paragraph_exists
    assert Paragraph.new
  end

  def test_it_converts_paragraph_to_html
    paragraph = Paragraph.new
    assert_equal "<p>You just have to try the cheesecake.</p>", paragraph.convert_paragraph("You just have to try the cheesecake.")
  end

end