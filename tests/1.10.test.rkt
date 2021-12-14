#lang sicp

(#%require rackunit
           rackunit/text-ui
           "../exercises/1.10.rkt")

(define A-test
  (test-suite
   "exercise 1.10"
   
   (test-case
    "expressions for calculating"
    (check-equal? (A 1 10) 1024)
    (check-equal? (A 2 4) 65536)
    (check-equal? (A 3 3) 65536))))

(run-tests A-test 'verbose)
