#lang sicp

(#%require rackunit)

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(check-equal? (a-plus-abs-b 5 5) 10)
(check-equal? (a-plus-abs-b 5 -5) 10)
(check-equal? (a-plus-abs-b 5 0) 5)

;; return (a + |b|)
;; if b > 0, then (a + b)
;;           else (a - b)

