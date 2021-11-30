#lang sicp

(#%require rackunit)

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;; applicative-order
;; tries to evaluate (p) => infinite loop

;; normal-order
;; x = 0 => true => returns 0
