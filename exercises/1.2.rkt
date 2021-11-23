#lang sicp

(#%require rackunit)

(check-equal? (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7))) -37/150) ; => -37/150


;; pretty-printing
(check-equal?
 (/ (+ 5
       4
       (- 2
          (- 3
             (+ 6
                (/ 4 5)))))
    (* 3
       (- 6 2)
       (- 2 7)))
 -37/150); => -37/150

