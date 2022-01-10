#lang sicp

(#%require rackunit
           rackunit/text-ui
           "../exercises/1.18.rkt")

(define iter-*-test
  (test-suite
   "exercise 1.18"

   (test-case
    "iterative process that multiplies two non-negative integers using a logarithmic number of steps"
    (check-equal? (iter-* 0 0) 0)
    (check-equal? (iter-* 0 2) 0)
    (check-equal? (iter-* 2 0) 0)
    (check-equal? (iter-* 2 1) 2)
    (check-equal? (iter-* 2 2) 4)
    (check-equal? (iter-* 2 3) 6)
    (check-equal? (iter-* 3 987654321) (* 3 987654321)))))

(run-tests iter-*-test 'verbose)
