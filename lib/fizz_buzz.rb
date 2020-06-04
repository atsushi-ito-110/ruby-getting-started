def fizz_buzz(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 5 == 0
    'Buzz'
  elsif n % 3 == 0
    'Fizz'
  else
    n.to_s
  end
end

for n in 1..30 do
  puts fizz_buzz(n)
end