#lang sicp

(#%require rackunit
           rackunit/text-ui
           "../exercises/1.2.rkt")

(define expressions-test
  (test-suite
   "expression should be equal to -37/150"
              
   (test-case
    "expression testing"
    (check-equal? expression (/ -37 150)))
   
   (test-case
    "pretty-printing expression testing"
    (check-equal? pretty-expression (/ -37 150)))))

(run-tests expressions-test 'verbose)

