#lang sicp

(#%require rackunit
           rackunit/text-ui
           "../exercises/1.19.rkt")

(define fib-test
  (test-suite
   "exercise 1.19"

   (test-case
    "computing the Fibonacci numbers in a logarithmic number of steps"
    (check-equal? (fib 0) 0)
    (check-equal? (fib 1) 1)
    (check-equal? (fib 2) 1)
    (check-equal? (fib 3) 2)
    (check-equal? (fib 4) 3)
    (check-equal? (fib 5) 5)
    (check-equal? (fib 6) 8)
    (check-equal? (fib 7) 13)
    (check-equal? (fib 29) 514229))))

(run-tests fib-test 'verbose)
