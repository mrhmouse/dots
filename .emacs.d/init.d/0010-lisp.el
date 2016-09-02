(dolist (hook '(paredit-mode))
  (add-hook 'lisp-mode-hook hook))
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'comint-mode-hook 'paredit-mode)

(setq common-lisp-hyperspec-root
      "file:///home/jordan/.emacs.d/HyperSpec/")

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
