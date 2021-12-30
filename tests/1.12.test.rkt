#lang sicp

(#%require rackunit
           rackunit/text-ui
           "../exercises/1.12.rkt")

(define get-binom-test
  (test-suite
   "exercise 1.12"

   (test-case
    "return 0 if the indexes are outside the triangle"
    (check-equal? (get-binom -5 -5) 0)
    (check-equal? (get-binom -5 5) 0)
    (check-equal? (get-binom 5 -5) 0)
    (check-equal? (get-binom 0 0) 0)
    (check-equal? (get-binom 5 0) 0)
    (check-equal? (get-binom 0 5) 0))

   (test-case
    "recursive calculation of Pascal's triangle elements"
    (check-equal? (get-binom 1 1) 1)
    (check-equal? (get-binom 2 1) 1)
    (check-equal? (get-binom 2 2) 1)
    (check-equal? (get-binom 3 1) 1)
    (check-equal? (get-binom 3 2) 2)
    (check-equal? (get-binom 3 3) 1)
    (check-equal? (get-binom 4 1) 1)
    (check-equal? (get-binom 4 2) 3)
    (check-equal? (get-binom 4 3) 3)
    (check-equal? (get-binom 4 4) 1)
    (check-equal? (get-binom 5 1) 1)
    (check-equal? (get-binom 5 2) 4)
    (check-equal? (get-binom 5 3) 6)
    (check-equal? (get-binom 5 4) 4)
    (check-equal? (get-binom 5 5) 1)
    (check-equal? (get-binom 14 5) 715))))

(run-tests get-binom-test 'verbose)

