#lang racket

(require rackunit) ;; unit testing

(require "succ-macros.rkt") ;; recognizes successors

(check-equal? (succ 3) 4)
(check-equal? (succcc -3) 0)

(check-equal? (map succc '(1 2 3)) '(3 4 5))

(check-equal? (succccccccc 0) 8) ;; here you go, @samlakig@twitter.com