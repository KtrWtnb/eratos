def sieve(max)
  init       = (0..max).to_a
  prime_list = []
  max_sq     = Math.sqrt(max)

  (2..max).each do |num|
    if init[num]
      prime_list << num
      if num <= max_sq
        multi = num * num
        while multi <= max
          init[multi] = nil
          multi       += num
        end
      end
    end
  end
  prime_list.join(', ')
end

unless ARGV.empty?
  puts sieve(ARGV[0].to_i)
end
