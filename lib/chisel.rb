class Chisel

  def read_file
    handle = File.open(ARGV[0], "r")
    incoming_text = handle.read
    handle.close
  end

  def write_file
    html_text = incoming_text.#put here- method that changes markdown to html
    writer = File.open(ARGV[1], "w")
    writer.write(html_text)
    writer.close
  end

end