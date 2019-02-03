(define (pascal n k)
  (if (or (= k 0)
	  (= k n))
      1
      (+ (pascal (- n 1) (- k 1))
	       (pascal (- n 1) k))))

(pascal 4 2)

(define (sum n)
  (define (sum_iter n k suma)
    (if (= k n)
	suma
	(sum_iter n (+ k 1)
		  (+ suma (pascal n (+ k 1))))))
  (sum_iter n 0 1))

(sum 15)
	
