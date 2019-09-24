# 計算量はO(N^4)
def isStable(n:, input:, out:)
  n = n - 1
  0.upto(n) do |i|
    (i + 1).upto(n) do |j|
      0.upto(n) do |a|
        (a + 1).upto(n) do |b|
          if input[i][1] == input[j][1] && input[i] == out[b] && input[j] == out[a]
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
# bubble sort
bubble_c = c.clone
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

# selection sort
select_c = c.clone
0.upto(n -1) do |i|
  minj = i
  i.upto(n - 1) do |j|
    if select_c[j][1] < select_c[minj][1]
      minj = j
    end
  end
  tmp = select_c[i]
  select_c[i] = select_c[minj]
  select_c[minj] = tmp
end
puts select_c.join(' ')
puts isStable(n: n, input: c, out: select_c) ? 'Stable' : 'Not stable'
