#lang racket

(provide succs-string? succs->function)

(require [for-syntax racket])

(define succs #rx"succ+")

(define (succs-string? s)
  (regexp-match succs s))

(define (succs->function s)
  (let ([m (succs-string? s)])
    (if m
        (let* ([s (first m)]
               [n (string-length s)]
               [how-many (- n 3)])
          (lambda (n) (+ n how-many)))
        (error 'succ "asked to convert an invalid string to an incrementer"))))

