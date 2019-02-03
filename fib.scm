(define (fib_rek n)
  (cond ((= n 0) 0)
	((= n 1) 1)
	(else (+ (fib_rek (- n 1))
		 (fib_rek (- n 2))))))

(fib_rek 26)

(define (fib n)
  (define (fib_iter ct a b)
    (if (= ct n)
	a
	(fib_iter (+ ct 1) b (+ a b))))
  (fib_iter 0 0 1))

(fib 26)
