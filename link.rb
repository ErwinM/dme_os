# link.rb
require 'pry'

#args = Hash[ ARGV.join(' ').scan(/--?([^=\s]+)(?:=(\S+))?/) ]
#test_groups = args["t"].split("")

output = File.open("linked.ss", "w+")
output.write("include(pseudo_ops.h)\n\n")

# build list of tests to run

filenr = 0
#last_test = in_files.length

ARGV.each do |fname|
  filenr +=1;
  name, ext = fname.split(".")
  if name[0]=='_' then
    name[0] = ''
    filename = fname[1..-1]
  else
    filename = fname
  end
  puts name, filename
  syms = []

  # two passes:
  # 1. id all symbols
  # 2. write to output while replacing symbols
  #
  # pass #1

  f = File.open(filename, "r")
  f.readlines.each do |line|
    #puts line
    if line.strip[0]==";" then
      next
    end
    if line.include?(":") then
      symbol, rest = line.split(":")
      # only replace symbols with local scope (without underscore)
      unless symbol[0]=="_" then
        syms << symbol
        puts "Replace: #{symbol}\n"
      end
    end
  end
  f.close

  # # pass #2 write to output while replacing symbols
  f = File.open(filename, "r")
  f.readlines.each do |line|
    if line.strip[0]==";" then
      output.write(line)
      next
    end

    syms.each do |s|
      line.sub!(s, "#{s}_#{name}")
    end

    output.write(line)
  end
  output.write("\n\n")




end

output.close
