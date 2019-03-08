class Prime

  def self.get_primes(n)
    # Calculate the upper bound for sieve function.
    tmp = n < 6 ? 6 : n
    max = tmp * (Math.log(tmp) + Math.log(Math.log(tmp)))
    primes = sieve(max)
    primes[0...n]
  end


  # Sieve of Eratosthenes.
  def self.sieve(max)
    primes = (0..max).to_a
    primes[0] = primes[1] = nil

    primes.each do |p|
      next unless p
      break if p * p > max
      (p * p).step(max, p) { |m| primes[m] = nil }
    end

    primes.compact
  end

end
