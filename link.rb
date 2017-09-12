# link.rb
require 'pry'

# parse ARGV to seperate source and output name
# format is link source1, source2, source2, -oOUTPUTNAME
sources = []

ARGV.each do |arg|
  if arg[0..1]=='-o' then
    $out = arg[2..-1]
  else
    sources << arg
  end
end

if $out.nil?
  puts "No output name given"
  exit
end

output = File.open("#{$out}.ss", "w+")
output.write("include(pseudo_ops.h)\n\n")

# build list of tests to run

filenr = 0
#last_test = in_files.length

sources.each do |fname|
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
        #puts "Replace: #{symbol}\n"
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
