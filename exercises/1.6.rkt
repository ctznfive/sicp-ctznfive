#lang sicp

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 144) ; => aborting! maximum recursion depth exceeded

;; The program never returns.
;; new-if - an ordinary procedure with applicative-order evaluation
;; the evaluator tries to evaluate all of its arguments
;; call to sqtr-iter => call to sqtr-iter => ... => an infinite loop
