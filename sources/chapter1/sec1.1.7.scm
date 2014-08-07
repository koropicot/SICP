(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter2 new old x)
  (if (good-enough2? new old)
      new
      (sqrt-iter2 (improve new x)
                  new
                  x)))

(define (good-enough2? new old)
  (< (abs (/ (- new old) new)) 0.001))

(define (sqrt2 x)
  (sqrt-iter2 1.0 x x))



