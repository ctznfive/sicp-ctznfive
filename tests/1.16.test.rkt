#lang sicp

(#%require rackunit
           rackunit/text-ui
           "../exercises/1.16.rkt")

(define fast-expt-iter-test
  (test-suite
   "exercise 1.16"

   (test-case
    "compute exponentials in a logarithmic number of steps iteratively"
    (check-equal? (fast-expt-iter 2 0) 1)
    (check-equal? (fast-expt-iter 2 1) 2)
    (check-equal? (fast-expt-iter 2 2) 4)
    (check-equal? (fast-expt-iter 2 3) 8)
    (check-equal? (fast-expt-iter 2 4) 16)
    (check-equal? (fast-expt-iter 2 5) 32)
    (check-equal? (fast-expt-iter 2 6) 64)
    (check-equal? (fast-expt-iter 2 7) 128)
    (check-equal? (fast-expt-iter 7 12) 13841287201))))

(run-tests fast-expt-iter-test 'verbose)
