;;; init.el --- the entry of emacs config -*- lexical-binding: t -*-

;; Author: Cabins
;; Maintainer: Cabins
;; Version: 1.0
;; Homepage: https://github.com/cabins/tenon-emacs
;;; Commentary:
;; (c) Cabins Kong, 2020-2021

;;; Code:

;; set the startup default directory, not essential but recommended.
(setq default-directory "~/")

;; update load-path to make customized lisp codes work
(push (expand-file-name "lisp" user-emacs-directory) load-path)

;; provides some useful functions, add more here if you want
(require 'init-fn)			;define the functions

;; change Emacs default settings here, variables only (NOT include built-in packages)
(require 'init-system)			;better emacs configs

;; settings for Melpa/Elpa/GNU repos for Emacs
(require 'init-elpa)			;package initialize

;; change default Emacs settings with built-in packages
(require 'init-builtin)			;better builtin packages

;; all the third-part packages configed here
(require 'init-package)			;third-part packages

;; settings for programming languages (include LSP feature)
(require 'init-lang)			;for programming

;; DON'T forget to define and load custom file at last
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
    (load custom-file nil t))

(provide 'init)

;;; init.el ends here
 ;; Local Variables:
;; byte-compile-warnings: (not unresolved obsolete)
;; End:
