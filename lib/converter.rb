require 'pry'

class Converter

  def convert_md_to_html(markdown)
    if markdown.include? "#####"
      h5 = markdown.gsub(/#####/, '<h5>')
      h5.insert(-1, "</h5>")
    elsif markdown.include? "####"
      h4 = markdown.gsub(/####/, '<h4>')
      h4.insert(-1, "</h4>")
    elsif markdown.include? "###"
      h3 = markdown.gsub(/###/, '<h3>')
      h3.insert(-1, "</h3>")
    elsif markdown.include? "##"
      h2 = markdown.gsub(/##/, '<h2>')
      h2.insert(-1, "</h2>")
    elsif markdown.include? "#"
      h1 = markdown.gsub(/#/, '<h1>')
      h1.insert(-1, "</h1>")
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
  
  # def convert_paragraph(markdown)
  #   if markdown.include? "#"
  #     markdown
  #   elsif markdown.include? "\n\n"
  #     array_1 = markdown.split("\n")
  #     p1 = array_1.shift
  #     p2 = array_1.pop
  #     p1_first = p1.insert(0, "<p>")
  #     p1_final = p1_first.insert(-1, "</p>\n")
  #     p2_first = p2.insert(0, "<p>")
  #     p2_final = p2_first.insert(-1, "</p>")
  #     p1_final + p2_final
  #   else
  #     p_graph_first = markdown.insert(0, "<p>")
  #     p_graph_last = p_graph_first.insert(-1, "</p>")
  #   end
  # end

  # def convert_header(markdown)
  #   final_html = ""
  #   markdown_to_html.each do |header, html_tags|
  #     next unless markdown.include? header
  #     final_html = markdown.gsub(header, html_tags[0])
  #     final_html.insert(-1, html_tags[1])    
  #     break  
  #   end
  #   final_html
  # end

  # def markdown_to_html
  #   {
  #     "#####" => ["<h5>", "</h5>"],
  #     "####" => ["<h4>", "</h4>"],
  #     "###" => ["<h3>", "</h3>"],
  #     "##" => ["<h2>", "</h2>"],
  #     "#" => ["<h1>", "</h1>"],
  #   }
  # end

end

