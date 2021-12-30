#lang sicp

(#%provide f-rec f-iter)

;; recursive
(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
         (* 2 (f-rec (- n 2)))
         (* 3 (f-rec (- n 3))))))

;; iterative
(define (f-iter n)
  (define (f-iter-accum f-3 f-2 f-1 count)
    (if (= count n)
        f-1
        (f-iter-accum f-2
                      f-1
                      (+ (* 3 f-3) (* 2 f-2) f-1)
                      (+ count 1))))
  (if (< n 3)
      n
      (f-iter-accum 0 1 2 2)))

  