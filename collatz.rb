def collatz_seq_longest(num,d)
  d=d+1;
  if num!=1 && num%2==0 
        k=num/2
        collatz_seq_longest(k,d) 
  
  elsif num!=1 && num%2!=0

        k=num*3+1 
        collatz_seq_longest(k,d)
  
  elsif num==1 
         return d
      
  end
 

end



max=collatz_seq_longest(1,0)
(2..1000000).each do |k| 
result=collatz_seq_longest(k,0)

if max < result
  max = result
  @number = k
end
end

puts @number