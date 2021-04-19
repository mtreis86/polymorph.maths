;;;; polymorph.maths.asd

(asdf:defsystem #:polymorph.maths
    :description "Maths for polymorph.stl"
    :author "Commander Thrashdin"
    :license  "MIT"
    :version "0.5"
    :serial t
    :depends-on (#:adhoc-polymorphic-functions #:compiler-macro)
    :components ((:module
                  "src"
                  :serial t
                  :components
                  ((:file "package")
                   (:file "polymorph.maths"))))

    :in-order-to ((asdf:test-op (asdf:test-op :polymorph.maths/test))))

(asdf:defsystem #:polymorph.maths/test
  :description "Unit tests for polymorph.maths"
  :license "MIT"
  :serial t
  :depends-on (#:polymorph.maths #:fiveam)
  :components ((:module
                "test"
                :serial t
                :components
                ((:file "test")
                 (:file "equality"))))

  :perform (test-op (o s)
                    (uiop:symbol-call '#:polymorph.maths/test '#:test-polymorph.maths)))
