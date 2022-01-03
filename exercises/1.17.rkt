#lang sicp

(#%provide fast-*)

(define (fast-* a b)
  (define (double a) (* a 2))
  (define (halve a) (/ a 2))
  (cond ((or (= a 0) (= b 0)) 0)
        ((= b 1) a)
        ((even? b) (fast-* (double a) (halve b)))
        (else (+ a
                 (fast-* a (- b 1))))))
