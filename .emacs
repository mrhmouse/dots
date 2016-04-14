;; -*- mode: emacs-lisp; -*-
(require 'package)

(add-to-list
 'package-archives
 '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote eww-browse-url))
 '(coffee-indent-tabs-mode nil)
 '(coffee-tab-width 4)
 '(cursor-type (quote box))
 '(custom-enabled-themes nil)
 '(indent-tabs-mode nil)
 '(tool-bar-mode nil))

(dolist (hook '(paredit-mode))
  (add-hook 'lisp-mode-hook hook))
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'comint-mode-hook 'paredit-mode)

(setq common-lisp-hyperspec-root "file:///home/jordan/.emacs.d/HyperSpec/")

;; TODO: test for sbcl existence
(setq inferior-lisp-program "ecl")

(ido-mode)

;; Magit bindings
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(global-set-key (kbd "C-x v p") 'git-messenger:popup-message)

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

;; toggle god-mode with ctrl-enter
(global-set-key (kbd "C-^")
                'god-local-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
