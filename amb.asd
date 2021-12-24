(asdf:defsystem #:amb
  :version "1.0.0"
  :author "Michał \"phoe\" Herda <phoe@disroot.org>"
  :license "MIT"
  :description "An implementation of John McCarthy's ambiguous operator"
  :depends-on (#:alexandria)
  :components ((:file "amb"))
  :in-order-to ((asdf:test-op (asdf:test-op #:amb/test))))

(asdf:defsystem #:amb/test
  :version "1.0.0"
  :author "Michał \"phoe\" Herda <phoe@disroot.org>"
  :license "MIT"
  :description "Test suite for AMB"
  :depends-on (#:amb #:parachute)
  :components ((:file "test"))
  :perform (asdf:test-op (c v) (uiop:symbol-call '#:amb/test
                                                 '#:test-amb)))
