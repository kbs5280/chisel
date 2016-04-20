require 'pry'

class Chisel
  attr_reader :input

  def initialize
    file = File.read(ARGV[0])
    @input = file.chop.gsub("\n", " ")
  end

  def html_string
    if @input.include?("#")
      @input = @input.sub("##", "")
      "<h1>#{@input}</h2>"
    else
      "<p>#{@input}</p>"
    end
  end

  def write
    File.open('output.txt', 'w') { |file| file.write(html_string) }
  end

end

chisel = Chisel.new
puts chisel.html_string
chisel.write
