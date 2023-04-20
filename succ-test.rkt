#lang racket/base

(require "succ.rkt"
         rackunit)

(check-equal? ((succs->function "succ") 3) 4)
(check-equal? ((succs->function "succc") 3) 5)
(check-equal? ((succs->function "succcc") 3) 6)

(check-equal? ((succs->function "succ") -1) 0)

(check-equal? ((succs->function "succ") #e3.14) #e4.14)
(check-equal? ((succs->function "succcc") #e3.14) #e6.14)

(check-not-equal? ((succs->function "succ") 3) 3)
