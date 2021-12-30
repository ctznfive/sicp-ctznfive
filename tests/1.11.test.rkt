#lang sicp

(#%require rackunit
           rackunit/text-ui
           "../exercises/1.11.rkt")

(define f-rec-test
  (test-suite
   "exercise 1.11 : recursive process"
   
   (test-case
    "f(n) = n if n < 3"
    (check-equal? (f-rec -100) -100)
    (check-equal? (f-rec -1) -1)
    (check-equal? (f-rec 0) 0)
    (check-equal? (f-rec 1) 1)
    (check-equal? (f-rec 2) 2))

   (test-case
    "f(n) = f(n-1) + 2*f(n-2) + 3*f(n-3) if n >= 3"
    (check-equal? (f-rec 3) 4)
    (check-equal? (f-rec 4) 11)
    (check-equal? (f-rec 5) 25)
    (check-equal? (f-rec 6) 59))))

(define f-iter-test
  (test-suite
   "exercise 1.11 : iterative process"

   (test-case
    "f(n) = n if n < 3"
    (check-equal? (f-iter -100) -100)
    (check-equal? (f-iter -1) -1)
    (check-equal? (f-iter 0) 0)
    (check-equal? (f-iter 1) 1)
    (check-equal? (f-iter 2) 2))

   (test-case
    "f(n) = f(n-1) + 2*f(n-2) + 3*f(n-3) if n >= 3"
    (check-equal? (f-iter 3) 4)
    (check-equal? (f-iter 4) 11)
    (check-equal? (f-iter 5) 25)
    (check-equal? (f-iter 6) 59))))
   
(run-tests f-rec-test 'verbose)
(run-tests f-iter-test 'verbose)
