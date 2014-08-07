;立方根をNewton法で求める
(define (cbrt-iter new old x)
  (if (good-enough2? new old)
      new
      (cbrt-iter (improve-cbrt new x)
                 new
                 x)))

(define (improve-cbrt guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough2? new old)
  (< (abs (/ (- new old) new)) 0.001))

(define (square x) (* x x))

(define (cbrt x)
  (cbrt-iter 1.0 x x))
