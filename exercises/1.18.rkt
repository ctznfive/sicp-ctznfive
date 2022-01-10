#lang sicp

(#%provide iter-*)

(define (iter-* a b)
  (define (double a) (* a 2))
  (define (halve a) (/ a 2))
  
  ;; ab + c is constant
  (define (iter a b c)
    (cond ((or (= a 0) (= b 0)) 0)
          ((= b 1) (+ c a))
          ((even? b) (iter (double a) (halve b) c))
          (else (iter a (- b 1) (+ c a)))))
  (iter a b 0))