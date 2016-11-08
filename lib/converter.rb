require 'pry'

class Converter

  def convert_header(markdown)
    final_html = ""
    markdown_to_html.each do |header, html_tags|
      next unless markdown.include? header
      final_html = markdown.gsub(header, html_tags[0])
      final_html.insert(-1, html_tags[1])    
      break  
    end
    final_html
  end

  def convert_paragraph(markdown)
    if markdown.include? "#"
      markdown
    elsif markdown.include? "\n\n"
      array_1 = markdown.split("\n")
      p1 = array_1.shift
      p2 = array_1.pop
      p1_first = p1.insert(0, "<p>")
      p1_final = p1_first.insert(-1, "</p>\n")
      p2_first = p2.insert(0, "<p>")
      p2_final = p2_first.insert(-1, "</p>")
      p1_final + p2_final
    else
      p_graph_first = markdown.insert(0, "<p>")
      p_graph_last = p_graph_first.insert(-1, "</p>")
    end
  end

    # if markdown.include? "#####"
    #   true
    #   h5_half = markdown.gsub(/#####/, '<h5>')
    #   h5 = h5_half.insert(-1, "</h5>")
    #   h5
    # elsif markdown.include? "####"
    #   true
    #   h4_half = markdown.gsub(/####/, '<h4>')
    #   h4 = h4_half.insert(-1, "</h4>")
    #   h4
    # elsif markdown.include? "###"
    #   true
    #   h3_half = markdown.gsub(/###/, '<h3>')
    #   h3 = h3_half.insert(-1, "</h3>")
    #   h3
    # elsif markdown.include? "##"
    #   true
    #   h2_half = markdown.gsub(/##/, '<h2>')
    #   h2 = h2_half.insert(-1, "</h2>")
    #   h2
    # elsif markdown.include? "#"
    #   true
    #   h1_half = markdown.gsub(/#/, '<h1>')
    #   h1 = h1_half.insert(-1, "</h1>")
    #   h1
    # end

  def markdown_to_html
    {
      "#####" => ["<h5>", "</h5>"],
      "####" => ["<h4>", "</h4>"],
      "###" => ["<h3>", "</h3>"],
      "##" => ["<h2>", "</h2>"],
      "#" => ["<h1>", "</h1>"],
    }
  end

end

