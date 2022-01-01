#lang sicp

(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

(sine 12.15)

;; a) 12.15 / 3 ^ n < 0.1, so p is called 5 times.

;; b) The number of steps has order of growth Θ(log(n))
;; The space required is proportional to the number of steps Θ(log(n))

