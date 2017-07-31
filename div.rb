tick = 0
r0 = 0
r1 = 1
r2 = 0x8a90
r3 = 0x10


puts "#{r2} / #{r3} \n\n"

# setup for division
while (r2 > r3) do
  r3 = r3 << 1
  r1 = r1 << 1
   puts "r3: " + ("%016b" % r3) + " (#{r3.to_s(16)})\n"
  tick += 3
end

puts "r1: #{r1.to_s(2)}\n"
puts "r2: #{r2.to_s(2)}\n"
puts "r3: #{r3.to_s(2)}\n"

while (r1 > 1) do
  r3 = r3 >> 1
  r1 = r1 >> 1
  if (r2>=r3) then
    r2 = r2 - r3
    r0 = r0 | r1
  end
  tick += 7
  puts "-------------------"
  puts "r0: #{r0.to_s(2)} (#{r0})\n"
  puts "r1: #{r1.to_s(2)}\n"
  puts "r2: #{r2.to_s(2)}\n"
  puts "r3: #{r3.to_s(2)}\n"
end
puts tick