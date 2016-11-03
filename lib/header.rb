require './library.rb'

class Header

  def remove_pound(markdown)
    line = markdown.chars
    line_stuff = line.select do |x|
      x != "#"
    end
    line_stuff.join
  end

  def add_heading_parameters
    
  end

end