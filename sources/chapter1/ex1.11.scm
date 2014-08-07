(define (f-rp n)
  (if (< n 3)
      n
      (+ (f-rp (- n 1)) (* 2 (f-rp (- n 2))) (* 3 (f-rp (- n 3))))))

(define (f-ip n)
  (define (iter n a b c)
    (if (= n 0)
        a
        (iter (- n 1) (+ a (* 2 b) (* 3 c)) a b)))
  (if (< n 3)
      n
      (iter (- n 2) 2 1 0)))
