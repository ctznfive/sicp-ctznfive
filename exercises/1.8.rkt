#lang sicp

(#%provide cube-root)


(define (cube-root x)
  
  (define (cube-root-iter guess guess0 x)
    (if (good-enough? guess guess0 x)
        guess
        (cube-root-iter (improve guess x) guess x)))
  
  (define (good-enough? guess guess0 x)
    (< (abs (- guess guess0))
       (* 1e-10 guess0)))

  (define (cube x) (* x x x))

  (define (square x) (* x x))

  (define (improve guess x)
    (/ (+ (/ x
             (square guess))
          (* 2 guess))
       3))

  (if (>= x 0)
    (cube-root-iter 1.0 0.5 x)
    (- (cube-root-iter 1.0 0.5 (- x)))))
