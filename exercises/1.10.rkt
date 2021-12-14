#lang sicp

(#%provide A)


(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (f n) (A 0 n)) ; 2 * n

(define (g n) (A 1 n)) ; 2 ^ n
;; (g 1) equals 2
;; (A 1 n) equals (A 0 (A 1 (- n 1))) for n > 1 
;; (A 0 n) -> 2 * n, the result follows by mathematical induction

(define (h n) (A 2 n)) ; 2 ^ 2 ^ 2 ^ 2 ^ ... 2 ^ 2; n 个 2
;; (h 1) equals 2
;; (A 2 n) is equal to (A 1 (A 2 (- n 1))) for n > 1
;; the result follows by mathematical induction

(define (k n) (* 5 n n)) ; 5 * n ^ 2