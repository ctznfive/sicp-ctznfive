#lang sicp

(#%require rackunit
           rackunit/text-ui
           "../exercises/1.7.rkt")

(define new-sqrt-test
  (test-suite
   "exercise 1.7"
              
   (test-case
    "for regular numbers"
    (check-= (new-sqrt 144) 12.0 1e-10)
    (check-= (new-sqrt 9) 3.0 1e-10))

   (test-case
    "for large numbers"
    (check-= (new-sqrt 1e7) 3162.27766 1e-5)
    (check-= (new-sqrt 1e200) 1e100 1e-10))
   
   (test-case
    "for small numbers"
    (check-= (new-sqrt 1e-7) 0.00031 1e-5)
    (check-= (new-sqrt 1e-100) 1e-50 1e-10))))

(run-tests new-sqrt-test 'verbose)

