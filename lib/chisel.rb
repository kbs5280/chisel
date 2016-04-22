require 'pry'

class Chisel
  attr_reader :markdown

  def initialize(markdown)
    @markdown = markdown #File.read(ARGV[0])
    @html = @markdown #{}""
  end

  def chunks_to_lines
    markdown_lines = @markdown.split("\n")
  end

  def markdown_to_html
  end

  def write
    File.open('my_output.html', 'w') { |file| file.write(@html) }
  end

end
