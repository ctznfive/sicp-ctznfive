#lang sicp

(#%require rackunit
           rackunit/text-ui
           "../exercises/1.17.rkt")

(define fast-*-test
  (test-suite
   "exercise 1.17"

   (test-case
    "recursive process that multiplies two non-negative integers using a logarithmic number of steps"
    (check-equal? (fast-* 0 0) 0)
    (check-equal? (fast-* 0 2) 0)
    (check-equal? (fast-* 2 0) 0)
    (check-equal? (fast-* 2 1) 2)
    (check-equal? (fast-* 2 2) 4)
    (check-equal? (fast-* 2 3) 6)
    (check-equal? (fast-* 3 987654321) (* 3 987654321)))))

(run-tests fast-*-test 'verbose)
