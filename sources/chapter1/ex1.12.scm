(define (pascal i j)
  (cond ((or (< j 1) (> j i)) 0)
        ((or (<= j 1) (>= j i)) 1)
        (else (+ (pascal (- i 1) (- j 1)) (pascal (- i 1) j)))))
