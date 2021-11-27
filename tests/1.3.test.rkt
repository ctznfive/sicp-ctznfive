#lang sicp

(#%require rackunit
           rackunit/text-ui
           "../exercises/1.3.rkt")

(define sum-two-larger-squares-test
  (test-suite
   "sum-two-larger-squares"
              
   (test-case
    "all numbers are different"
    (check-equal? (sum-two-larger-squares 1 2 3) 13)
    (check-equal? (sum-two-larger-squares 1 3 2) 13)
    (check-equal? (sum-two-larger-squares 3 2 1) 13)
    (check-equal? (sum-two-larger-squares 3 1 2) 13)
    (check-equal? (sum-two-larger-squares 2 1 3) 13)
    (check-equal? (sum-two-larger-squares 2 3 1) 13)
    (check-equal? (sum-two-larger-squares 2 3 0) 13)
    (check-not-equal? (sum-two-larger-squares 2 3 0) 10)
    (check-equal? (sum-two-larger-squares 4 2 3) 25)
    (check-equal? (sum-two-larger-squares -5 -7 -2) 29)
    (check-equal? (sum-two-larger-squares -5 -7 2) 29))

   (test-case
    "the two largest numbers are equal to"
    (check-equal? (sum-two-larger-squares 1 0 1) 2)
    (check-equal? (sum-two-larger-squares 2 2 1) 8))
   
   (test-case
    "the two smallest numbers are equal to"
    (check-eq? (sum-two-larger-squares 1 0 0) 1)
    (check-eq? (sum-two-larger-squares 2 1 1) 5))
   
   (test-case
    "all numbers are equal to"
    (check-equal? (sum-two-larger-squares 2 2 2) 8)
    (check-equal? (sum-two-larger-squares -2 -2 -2) 8)
    (check-equal? (sum-two-larger-squares 0 0 0) 0))))

(run-tests sum-two-larger-squares-test 'verbose)
