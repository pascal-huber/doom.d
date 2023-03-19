;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el
;;;
;;;

(package! lsp-latex)

(package! doom-themes)

;; Org-mode
(package! org) ; ???
(package! toc-org)

;; org-msg doesn't seem to work nicely when signing
;; see:
;;      https://github.com/jeremy-compostella/org-msg/issues/24
;;      https://github.com/jeremy-compostella/org-msg/issues/26
(package! org-msg :disable t)

;; don't use flycheck-popup-tip - maybe try it later
(package! flycheck-popup-tip :disable t)

;; don't use org-mu4e - don't see the benefit
(package! org-mu4e :disable t)

;; don't use org-superstar - too much fancy for me...
(package! org-superstar :disable t)

;; use fixed which-key which works well with god-mode
;; see https://github.com/justbur/emacs-which-key/pull/247
;; (package! which-key)
;; (unpin! which-key)
(package! which-key
  :recipe (:host github
           :repo "darth10/emacs-which-key"
           :branch "fix-paging-with-god-mode"))
;; (package! which-key
;;   :recipe (:host github
;;            :repo "pascal-huber/emacs-which-key"
;;            :branch "fix-paging-with-god-mode"))

;; use fresh god-mode from master
;; see https://github.com/emacsorphanage/god-mode/issues/114
;; TODO: remove this (should not be necessary)
;; (package! god-mode)
(package! god-mode
  :recipe (:host github
           :repo "emacsorphanage/god-mode"))
;; (package! embark)


;; Add souffle mode
;; (package! souffle-mode
;;   :recipe (:host github
;;            :repo "gbalats/souffle-mode"))


;; FIXME: is this the annoying package?
;; (package! smart-tabs-mode)



;; The following is the orignal content of package.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
                                        ;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
                                        ;(package! another-package
                                        ;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
                                        ;(package! this-package
                                        ;  :recipe (:host github :repo "username/repo"
                                        ;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like ao disable a package included with Doom, you can do so here
;; with the `:disable' property:
                                        ;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
                                        ;(package! builtin-package :recipe (:nonrecursive t))
                                        ;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
                                        ;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
                                        ;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
                                        ;(unpin! pinned-package)
;; ...or multiple packages
                                        ;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
                                        ;(unpin! t)
