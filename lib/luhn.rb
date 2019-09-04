module Luhn
 def self.is_valid?(number)
    
    newstr="";
    newnumb=0;
    d= number.to_s 
    f=d.scan /\w/
    m=f.reverse
    m.each_with_index do |n, indx|
    p
    d=n.to_i
    d=d*2 if (indx%2==1)
    d=d-9 if (d>=10)
    n=d.to_s
    newstr=newstr+n 
    newnumb=d+newnumb
  end
   if newnumb%10==0
    return true
else
  return false 
end
end

puts self.is_valid?(377681478627336)
end