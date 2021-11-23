#lang sicp

(#%require rackunit)

(define (square a) (* a a))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (sum-two-larger-squares a b c)
  (cond ((and (< a b) (< a c))
         (sum-of-squares b c))
        ((and (< b a) (< b c))
         (sum-of-squares a c))
        (else
         (sum-of-squares a b))))

(check-eq? (sum-two-larger-squares 0 0 0) 0)
(check-eq? (sum-two-larger-squares 1 0 1) 2)
(check-eq? (sum-two-larger-squares 1 2 3) 13)
(check-eq? (sum-two-larger-squares 2 3 0) 13)
(check-eq? (sum-two-larger-squares 4 2 3) 25)
(check-eq? (sum-two-larger-squares -5 -7 -2) 29)
(check-eq? (sum-two-larger-squares -5 -7 2) 29)