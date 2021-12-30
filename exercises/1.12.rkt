#lang sicp

(#%provide get-binom)

(define (get-binom row ind)
  (cond ((or (< row ind) (< row 1) (< ind 1))
         0)
        ((or (= ind 1) (= ind row))
         1)
        (else (+ (get-binom (- row 1) (- ind 1))
                 (get-binom (- row 1) ind)))))
