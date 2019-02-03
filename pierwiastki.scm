(define (avg x y)
  (/ (+ x y) 2.0))

(define (sqrt x)
  (define (improve g)
    (avg g (/ x g)))
  (define (good_enough? g0 g1)
    (< (abs (- g0 g1))
       (* 0.00001 g1)))
  (define (sqrt_iter g0 g1)
    (if (good_enough? g0 g1)
	g1
	(sqrt_iter g1 (improve g1))))

  (sqrt_iter 1.0 (improve 1.0)))

(sqrt (/ 1 10000))

(define (cbrt x)
  (define (improve g)
    (/ (+ (/ x (* g g))
	  (* 2 g))
       3))
  (define (good_enough? g0 g1)
    (< (abs (- g0 g1))
       (* 0.001 g1)))
  (define (cbrt_iter g0 g1)
    (if (good_enough? g0 g1)
	g1
	(cbrt_iter g1 (improve g1))))
  (cbrt_iter 1.0 (improve 1.0)))

(cbrt 1000)
