#バブルソート
n = gets.to_i
a = gets.split.map(&:to_i)
flag = true
c = 0
p a
while flag
  flag = false
  (n -1).downto(1) do |j|
    if a[j] < a[j - 1]
      tmp = a[j]
      a[j] = a[j - 1]
      a[j -1] = tmp
      c += 1
      flag = true
    end
  end
  p a
end
puts a.join ' '
puts c