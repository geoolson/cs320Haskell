# cs320Haskell

Grammar of the math expression
-------------------------

\<expression> ::= (10 op 10) op (10 op 10)  
\<expression> ::= 10 op 10 op 10 op 10  
\<expression> ::= ( 10 op 10 op 10 ) op 10  
\<expression> ::= 10 op (10 op 10) op 10   
\<expression> ::= 10 op (10 op 10 op 10)

\<op> ::= +  
\<op> ::= -  
\<op> ::= *  
\<op> ::= /

I need to test all possible expressions and accept all expressions that evaluate within the range of 0 through 9. I need to provide a unit test for this as well.