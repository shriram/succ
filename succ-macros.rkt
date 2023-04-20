#lang racket

(provide (rename-out [handle-id #%top]))

(require [for-syntax racket "succ.rkt"])

(define-syntax (handle-id stx)
  (syntax-case stx ()
    [(_ . any)
     (let ([str (symbol->string (syntax->datum #'any))])
       (if (succs-string? str)
           (with-syntax [(n (datum->syntax stx (succs->function str)))]
             #'(#%datum . n))
           #'(#%top . any)))]))
