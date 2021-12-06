#lang sicp

(#%provide new-sqrt)


(define (new-sqrt x)
  
  (define (sqrt-iter guess guess0)
    (if (good-enough? guess guess0)
        guess
        (sqrt-iter (improve guess) guess)))

  (define (good-enough? guess guess0)
    (< (abs (/ (- guess guess0) guess0)) 1e-10))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (average a b)
    (/ (+ a b) 2))
 
  (sqrt-iter 1.0 0.5))
