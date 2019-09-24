def isStable(n:, input:, out:)
  n = n - 1
  0.upto(n) do |i|
    (i + 1).upto(n) do |j|
      0.upto(n) do |a|
        (a + 1).upto(n) do |b|
          if input[i] == input[j] && input[i] == out[b] && input[j] == out[a]
            return false
          end
        end
      end
    end
  end
  true
end

n = gets.to_i
c = gets.chomp.split.map(&:to_s)
bubble_c = c.clone

# bubble sort
0.upto(n -1) do |i|
  (n - 1).downto(i + 1) do |j|
    if bubble_c[j][1].to_i < bubble_c[j -1][1].to_i
      tmp = bubble_c[j]
      bubble_c[j] = bubble_c[j - 1]
      bubble_c[j - 1] = tmp
    end
  end
end
puts bubble_c.join(' ')
puts isStable(n: n, input: c, out: bubble_c) ? 'Stable' : 'Not stable'
