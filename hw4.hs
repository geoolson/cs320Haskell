add x y = x+y
sub x y = x-y
mult x y = x*y
divi x y
  | y /= 0 = x/y
  | otherwise = -1

-- 10 (10 10) 10 case
rhsMiddle x = 
  [ add x 10, sub x 10, mult x 10, divi x 10 ]
lhsMiddle x = 
  [ rhsMiddle (add 10 x), rhsMiddle (sub 10 x), rhsMiddle (mult 10 x), rhsMiddle (divi 10 x) ]
middle x = 
  [ lhsMiddle (add 10 x), lhsMiddle (sub 10 x), lhsMiddle (mult 10 x), lhsMiddle(divi 10 x) ] 


-- case 10 (10 10 10)
rhs3opands x = 
  [ nextOp(add x x), nextOp(sub x x), nextOp(mult x x), nextOp(divi x x) ]
nextOp x =
  [ lhs3Opands(add 10 x), lhs3Opands(sub 10 x), lhs3Opands(mult 10 x), lhs3Opands(divi 10 x) ]
lhs3Opands x = 
  [ add 10 x, sub 10 x, mult 10 x, divi 10 x ]


--case (10 10) (10 10) 
firstGroup x =
  [ secondGroup(add x x), secondGroup(sub x x), secondGroup(mult x x), secondGroup(divi x x) ]
secondGroup x =
  [ mult x (add 10 10) , mult x (sub 10 10), mult x (mult 10 10), mult x (divi 10 10) , divi x (add 10 10 ), divi x (sub 10 10 ), divi x (mult 10 10 ), divi x (divi 10 10 ) ]


--case (10 10 10) 10
lhs x =
  [ nextOpL(add x x ), nextOpL(sub x x), nextOpL(mult x x), nextOpL(divi x x)]
nextOpL x = 
  [ rhs (add 10 x), rhs (sub 10 x), rhs (mult 10 x), rhs(divi 10 x) ]
rhs x =
  [ add x 10, sub x 10, mult x 10, divi x 10 ]


--case 10 10 10 10
first x =
  [ next(add x x), next(sub x x), next(mult x x), next(divi x x) ]
next x =
  [ rhs(add x 10), rhs(sub x 10), rhs(mult x 10), rhs(divi x 10)]


main = do
  let x = [ middle 10, rhs3opands 10, lhs 10, first 10 ]
  let y = [firstGroup 10 ]
  print x
  print y 
