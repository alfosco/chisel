class Paragraph

  def convert_paragraph(markdown)
  #require 'pry'; binding.pry
    if markdown.start_with? "#"
    false
    p_graph_first = markdown.insert(0, "<p>")
    p_graph_last = p_graph_first.insert(-1, "</p>")
    p_graph_last
    end
  end

end