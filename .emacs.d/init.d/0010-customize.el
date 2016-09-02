(setq custom-file "~/.emacs.d/init.d/0010-customize.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(browse-url-browser-function (quote eww-browse-url))
 '(coffee-indent-tabs-mode nil)
 '(coffee-tab-width 4)
 '(cursor-type (quote box))
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("ebfa8d0654af120fff174bc7ec08bf1fef63df97bdeff63161dbff6f61cef747" default)))
 '(electric-indent-mode nil)
 '(erc-nick "jordan")
 '(erc-server "localhost")
 '(fci-rule-color "#f8fce8")
 '(hl-paren-background-colors (quote ("#e8fce8" "#c1e7f8" "#f8e8e8")))
 '(hl-paren-colors (quote ("#40883f" "#0287c8" "#b85c57")))
 '(indent-tabs-mode nil)
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(erc-input-face ((t (:foreground "cyan"))))
 '(erc-my-nick-face ((t (:foreground "cyan" :weight bold))))
 '(magit-diff-added ((t (:background "#ddffdd" :foreground "#000000"))))
 '(magit-diff-added-highlight ((t (:background "#cceecc" :foreground "#000000"))))
 '(magit-diff-base ((t (:background "#ffffcc" :foreground "#000000"))))
 '(magit-diff-base-highlight ((t (:background "#eeeebb" :foreground "#000000"))))
 '(magit-diff-removed ((t (:background "#ffdddd" :foreground "#000000"))))
 '(magit-diff-removed-highlight ((t (:background "#eecccc" :foreground "#000000"))))
 '(magit-section-highlight ((t (:background "grey95" :foreground "black")))))
