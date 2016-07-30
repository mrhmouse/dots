(setq custom-file "~/.emacs.d/init.d/0010-customize.el")
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
 '(erc-nick "jordan")
 '(erc-server "localhost")
 '(indent-tabs-mode nil)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-added ((t (:background "#ddffdd" :foreground "#000000"))))
 '(magit-diff-added-highlight ((t (:background "#cceecc" :foreground "#000000"))))
 '(magit-diff-base ((t (:background "#ffffcc" :foreground "#000000"))))
 '(magit-diff-base-highlight ((t (:background "#eeeebb" :foreground "#000000"))))
 '(magit-diff-removed ((t (:background "#ffdddd" :foreground "#000000"))))
 '(magit-diff-removed-highlight ((t (:background "#eecccc" :foreground "#000000"))))
 '(magit-section-highlight ((t (:background "grey95" :foreground "black")))))
