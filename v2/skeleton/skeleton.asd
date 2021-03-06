(in-package :cl-user)
(defpackage <% @var name %>-asd
  (:use :cl :asdf))
(in-package :<% @var name %>-asd)

(defsystem <% @var name %>
  :version "0.1"
  :author "<% @var author %>"
  :license "<% @var license %>"
  :depends-on (:clack
               :caveman2
               :envy
               :osicat
               :cl-ppcre

               ;; HTML Template
               :cl-emb

               ;; for CL-DBI
               :caveman2-db)
  :components ((:module "src"
                :components
                ((:file "<% @var name %>" :depends-on ("config"))
                 (:file "web" :depends-on ("view"))
                 (:file "view" :depends-on ("config"))
                 (:file "config"))))
  :description "<% @var description %>"
  :in-order-to ((test-op (load-op <% @var name %>-test))))
