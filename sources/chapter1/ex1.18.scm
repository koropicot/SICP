;対数オーダーの反復的プロセスの乗算手続き

(define (double x) (* x 2))
(define (halve x) (/ x 2))
(define (even? x) (= (remainder x 2) 0))

(define (fast-mult-ip x y)
  (define (iter a x y)
    (cond ((or (= x 0) (= y 0)) a)
          ((even? y) (iter a (double x) (halve y)))
          (else (iter (+ a x) x (- y 1)))))
  (iter 0 x y))