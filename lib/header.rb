class Header

  # def remove_pound(markdown)
  #   line = markdown.chars
  #   line_remove_pound = line.select do |x|
  #     x != "#"
  #   end
  #   poundless_line = line_remove_pound.join
  #   poundless_line
  # end

  def convert_header(markdown)
    if markdown.include? "#####"
      true
      h5_half = markdown.gsub(/#####/, '<h5>')
      h5 = h5_half.insert(-1, "</h5>")
      h5
    elsif markdown.include? "####"
      true
      h4_half = markdown.gsub(/####/, '<h4>')
      h4 = h4_half.insert(-1, "</h4>")
      h4
    elsif markdown.include? "###"
      true
      h3_half = markdown.gsub(/###/, '<h3>')
      h3 = h3_half.insert(-1, "</h3>")
      h3
    elsif markdown.include? "##"
      true
      h2_half = markdown.gsub(/##/, '<h2>')
      h2 = h2_half.insert(-1, "</h2>")
      h2
    elsif markdown.include? "#"
      true
      h1_half = markdown.gsub(/#/, '<h1>')
      h1 = h1_half.insert(-1, "</h1>")
      h1
    else
      
      p_graph_first = markdown.insert(0, "<p>")
      p_graph_last = p_graph_first.insert(-1, "</p>")
      p_graph_last
    end
  end

end

