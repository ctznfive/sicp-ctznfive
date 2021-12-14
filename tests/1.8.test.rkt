#lang sicp

(#%require rackunit
           rackunit/text-ui
           "../exercises/1.8.rkt")

(define cube-root-test
  (test-suite
   "exercise 1.8"
              
   (test-case
    "for regular numbers"
    (check-= (cube-root 1728) 12.0 1e-10)
    (check-= (cube-root 27) 3.0 1e-10))

   (test-case
    "for large numbers"
    (check-= (cube-root 1e7) 215.44346 1e-5)
    (check-= (cube-root 1e300) 1e100 1e-10))
   
   (test-case
    "for small numbers"
    (check-= (cube-root 1e-7) 0.00464 1e-5)
    (check-= (cube-root 1e-300) 1e-100 1e-10))

   (test-case
    "for negative numbers"
    (check-= (cube-root -1728) -12.0 1e-10)
    (check-= (cube-root -1e300) -1e100 1e-10)
    (check-= (cube-root -1e-300) -1e-100 1e-10))))

(run-tests cube-root-test 'verbose)
