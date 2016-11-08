class Chisel

  def read_file
    handle = File.open(ARGV[0], "r")
    incoming_text = handle.read
    handle.close
  end

  def write_file
    html_text = incoming_text#.#put here- method that changes markdown to html
    writer = File.open(ARGV[1], "w")
    writer.write(html_text)
    writer.close
  end

  def return_message
    puts "Converted #{ARGV[0]} (#{count_input_lines} lines) to #{ARGV[1]} (#{count_output_lines} lines)"
  end

  def count_input_lines
    input_lines = File.foreach(my_input.md).count
  end

  def count_output_lines
    output_lines = File.foreach(my_output.html).count
  end

end