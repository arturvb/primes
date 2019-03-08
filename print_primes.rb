require_relative 'lib/prime.rb'

def print_multiplication_table(primes)
  print "\t"
  primes.each {|pr| print "#{pr}\t"}
  puts ""

  primes.each do |p1|
    print "#{p1}\t"
    primes.each do |p2|
      print "#{p1 * p2}\t"
    end
    puts ""
  end
end


print_multiplication_table(Prime.get_primes(ARGV[0].to_i))
