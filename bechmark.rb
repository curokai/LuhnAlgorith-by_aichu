def iterative_fib(num)
  a=0
  b=1
  c=0
  (1..num).each do |n|
    c=a+b
    a=b
    b=c
  end
  return a
end


def recursive_fib(num)
return  num  if ( 0..1 ).include? num
  ( recursive_fib( num - 1 ) + recursive_fib( num - 2 ) )
end



require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end