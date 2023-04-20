succ
==============

Write successors to arbitrary depth in Racket.

Inspired by [this tweet](https://twitter.com/samlakig/status/1649007838440857600),
which simply wrote "succccccccc" in response to
a posting of the `cadnr` Racket package.

Installs a `#%top` macro that
checks whether an identifier fits the syntax of a successor and,
if so, converts it to one. If the same identifier name is bound in
the module, however, the behavior depends on the order of binding.

`succ.rkt`: core functions

`succ-test.rkt`: Test suite for the above

`succ-macros.rkt`: core macro

`succ-client.rkt`: examples of use
