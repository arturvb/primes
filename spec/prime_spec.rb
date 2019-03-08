require 'prime'

describe Prime do

  describe "#primes(n)" do
    it "returns an empty array if 'n' is 0" do
      primes = Prime.get_primes(0)
      expect(primes).to match_array([])
    end

    it "returns first 3 primes" do
      primes = Prime.get_primes(3)
      expect(primes).to match_array([2,3,5])
    end

    it "returns first 10 primes" do
      primes = Prime.get_primes(10)
      expect(primes).to match_array([2,3,5,7,11,13,17,19,23,29])
    end

    it "returns first 1000 primes" do
      primes = Prime.get_primes(1000)
      expect(primes[0]).to equal(2)
      expect(primes[499]).to equal(3571)
      expect(primes[-1]).to equal(7919)
    end


  end
end
