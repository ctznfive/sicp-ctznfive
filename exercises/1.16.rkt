#lang sicp

(#%provide fast-expt-iter)

(define (fast-expt-iter b n)
  (define (even? a)
    (= (remainder a 2) 0))

  (define (square a)
    (* a a))

  (define (iter b n a)
    (cond ((= n 0) a)
          ((even? n) (iter (square b) (/ n 2) a))
          (else (iter b (- n 1) (* a b)))))
  (iter b n 1))


