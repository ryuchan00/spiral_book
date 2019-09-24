n = gets.to_i
a = gets.split.map(&:to_i)
c = 0
0.upto(n - 1) do |i|
  minj = i
  i.upto(n -1) do |j|
    if a[j] < a[minj]
      minj = j
    end
  end
  c += 1 if i != minj
  tmp = a[i]
  a[i] = a[minj]
  a[minj] = tmp
end
puts a.join(' ')
puts c