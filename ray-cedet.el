;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CEDET
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-file "~/.emacs.d/vendor/cedet-1.0/common/cedet.el")

;;make all the 'semantic.cache' files go somewhere sane
(setq semanticdb-default-save-directory "~/emacs-meta/semantic.cache/")

;; EDE mode
(global-ede-mode 1)

;; Enable database and idle reparse engine
(semantic-load-enable-minimum-features)

;; Enabling various SEMANTIC minor modes.  See semantic/INSTALL for more ideas.
;; Select one of the following
(semantic-load-enable-code-helpers)
; (semantic-load-enable-guady-code-helpers)
; (semantic-load-enable-excessive-code-helpers)
; Enable this if you develop in semantic, or develop grammars
; (semantic-load-enable-semantic-debugging-helpers)

;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)
