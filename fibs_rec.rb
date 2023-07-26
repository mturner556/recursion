def fibs(n, arry = [])
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
  return [0, 1] if n <= 2
  arry = fibs_rec(n -1)
  arry << arry[-2] + arry[-1]
  # return arry
end

p fibs_rec(8)