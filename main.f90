function solve() result(res)
  implicit none
  real :: res
  print *, "yey"
end function solve

program cbroots
  implicit none
    real :: b,c,d,res
    print *, "x^3 + b * x^2 + b_2 * x + b_3 = 0"
    print *, "Enter coefficeints"
    read *,b,c,d
    print *,b,c,d
    call res = solve()
end program cbroots
    