# if D = 0 then error(DivisionByZeroException) end
# Q := 0                  -- Initialize quotient and remainder to zero
# R := 0
# for i := n − 1 .. 0 do  -- Where n is number of bits in N
#   R := R << 1           -- Left-shift R by 1 bit
#   R(0) := N(i)          -- Set the least-significant bit of R equal to bit i of the numerator
#   if R ≥ D then
#     R := R − D
#     Q(i) := 1
#   end
# end

n = 0xffff
d =  0xfffe
q =  0
r =  0

puts " boom"
15.downto(0) do |i|
  r = r << 1
  r = r & 0xfffe
  tmp = 1 << i
  tmp = n & tmp

  r = r | (tmp>>i)
  puts "R: " + "%016b\n" % r

  if r >= d then
    r = r - d
    tmp2 = 1 << i
    q |= tmp2
  end


  puts "Q: " + ("%016b" % q) + " --> #{q}"
end
puts "Q is #{q} with R #{r}"