def fibs(n)
  arry = []
  i = 0

  until i == n do
    if n <= 0
      return arry
    elsif i <= 1
      arry << i
      i += 1
    else
      arry << arry[-1] + arry[-2]
      i += 1
    end
  end

  arry
end

# p fibs(8)

def fibs_rec(n)
  
end

print fibs_rec(8)