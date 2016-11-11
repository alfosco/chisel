
require './lib/converter.rb'

class Chisel

  def read_file
    handle = File.open(ARGV[0], "r")
    @incoming_text = handle.read
    handle.close
  end

  def write_file
    converter = Converter.new
    html_text = converter.convert_md_to_html(@incoming_text)#put here- method that changes markdown to html
    writer = File.open(ARGV[1], "w")
    writer.write(html_text)
    writer.close
  end

  def count_input_lines
    @input_lines = File.readlines(ARGV[0]).size
  end

  def count_output_lines
    @output_lines = File.readlines(ARGV[1]).size
  end

  def return_message
    puts "Converted #{ARGV[0]} (#{@input_lines} lines) to #{ARGV[1]} (#{@output_lines} lines)"
  end

end

chisel = Chisel.new
chisel.read_file
chisel.write_file
chisel.count_input_lines
chisel.count_output_lines
chisel.return_message