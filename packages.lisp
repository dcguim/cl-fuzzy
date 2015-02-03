; SLIME 2014-07-29
CL-USER> (asdf:load-system :cl-fuzzy)
; compiling file "/Users/dcguim/common-lisp/cl-fuzzy/packages.lisp" (written 03 FEB 2015 08:20:30 PM):
; compiling (DEFPACKAGE #:CL-FUZZY ...)

; /Users/dcguim/.cache/common-lisp/sbcl-1.2.1-macosx-x64/Users/dcguim/common-lisp/cl-fuzzy/packages-ASDF-TMP.fasl written
; compilation finished in 0:00:00.012
; compiling file "/Users/dcguim/common-lisp/cl-fuzzy/fuzzy-set.lisp" (written 25 DEC 2014 02:14:53 PM):
; compiling (DEFCLASS FUZZY-SET ...)
; compiling (DEFUN BUILD-UNIVERSE ...)
; compiling (DEFMACRO INSTANTIATE ...)

; /Users/dcguim/.cache/common-lisp/sbcl-1.2.1-macosx-x64/Users/dcguim/common-lisp/cl-fuzzy/fuzzy-set-ASDF-TMP.fasl written
; compilation finished in 0:00:00.006
; compiling file "/Users/dcguim/common-lisp/cl-fuzzy/fuzzy.lisp" (written 10 DEC 2014 06:02:43 PM):
; compiling (DEFPARAMETER *UNIVERSE* ...)
; compiling (DEFCLASS FUZZY-SET ...)
; compiling (DEFMACRO MAKE-SET ...)
; compiling (DEFUN FUZZY-INTERSECT ...)
; compiling (DEFUN FUZZY-UNION ...)
; compiling (DEFUN FUZZY-COMP ...)
; compiling (DEFUN FUZZY-HEIGHT ...)
; compiling (DEFUN NORMALIZED ...)
; compiling (DEFUN A-CUT ...)
; compiling (DEFUN BUILD-UNIVERSE ...)
; compiling (DEFUN DEF-UNIVERSE ...)

; /Users/dcguim/.cache/common-lisp/sbcl-1.2.1-macosx-x64/Users/dcguim/common-lisp/cl-fuzzy/fuzzy-ASDF-TMP.fasl written
; compilation finished in 0:00:00.017
STYLE-WARNING: redefining COMMON-LISP-USER::BUILD-UNIVERSE in DEFUN
; compiling file "/Users/dcguim/common-lisp/cl-fuzzy/modifiers.lisp" (written 05 DEC 2014 03:21:11 PM):
; compiling (DEFUN VERY ...)
; compiling (DEFUN EXTREMELY ...)
; compiling (DEFUN LITTLE ...)
; compiling (DEFUN SLIGHTLY ...)
; compiling (DEFUN BUILD-NOT-LIST ...)
; compiling (DEFUN NO ...)

; /Users/dcguim/.cache/common-lisp/sbcl-1.2.1-macosx-x64/Users/dcguim/common-lisp/cl-fuzzy/modifiers-ASDF-TMP.fasl written
; compilation finished in 0:00:00.008

; file: /Users/dcguim/common-lisp/cl-fuzzy/fuzzy.lisp
; in: DEFUN FUZZY-UNION
;     (SETQ DONE 1)
; 
; caught WARNING:
;   undefined variable: DONE

; in: DEFUN FUZZY-HEIGHT
;     (SETQ H 0)
; 
; caught WARNING:
;   undefined variable: H

; in: DEFUN NORMALIZED
;     (SETQ NEG-NUM NIL)
; 
; caught WARNING:
;   undefined variable: NEG-NUM

; in: DEFUN A-CUT
;     (SETQ NEW A)
; 
; caught WARNING:
;   undefined variable: NEW

; in: DEFUN FUZZY-UNION
;     (SETQ NEW (REVERSE A))
; 
; caught WARNING:
;   undefined variable: NEW

; in: DEFUN FUZZY-INTERSECT
;     (SETQ NEW NIL)
; 
; caught WARNING:
;   undefined variable: NEW

; in: DEFUN NORMALIZED
;     (SETQ NORM-H NIL)
; 
; caught WARNING:
;   undefined variable: NORM-H

; in: DEFUN FUZZY-HEIGHT
;     (SETQ VAL (CADR E))
; 
; caught WARNING:
;   undefined variable: VAL
; 
; compilation unit finished
;   Undefined variables:
;     DONE H NEG-NUM NEW NORM-H VAL
;   caught 8 WARNING conditions
T
CL-USER> 
