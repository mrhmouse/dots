(dolist (hook '(lisp-mode-hook
                emacs-lisp-mode-hook
                comint-mode-hook
                clojure-mode-hook
                cider-repl-mode-hook))
  (add-hook hook
            (lambda ()
              (paredit-mode)
              (eldoc-mode))))

(setq common-lisp-hyperspec-root
      (concat "file://"
              (getenv "HOME")
              "/.emacs.d/HyperSpec/"))

(setq inferior-lisp-program "sbcl --noinform")

;; Bind arrow keys in dumb terminals for paredit
(add-hook 'paredit-mode-hook
          (lambda ()
            (global-set-key (kbd "M-[ c")
                            'paredit-forward-slurp-sexp)
            (global-set-key (kbd "ESC M-[ d")
                            'paredit-backward-slurp-sexp)
            (global-set-key (kbd "ESC M-[ c")
                            'paredit-backward-barf-sexp)
            (global-set-key (kbd "M-[ d")
                            'paredit-forward-barf-sexp)))
