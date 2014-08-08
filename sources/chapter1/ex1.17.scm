;対数オーダーの乗算手続き

(define (double x) (* x 2))
(define (halve x) (/ x 2))
(define (even? x) (= (remainder x 2) 0))

(define (fast-mult x y)
  (cond ((or (= x 0) (= y 0)) 0)
        ((even? y) (fast-mult (double x) (halve y)))
        (else (+ x (fast-mult x (- y 1))))))