(setq custom-file "~/.emacs.d/init.d/0010-customize.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(browse-url-browser-function (quote eww-browse-url))
 '(coffee-indent-tabs-mode nil)
 '(coffee-tab-width 4)
 '(column-number-mode t)
 '(cursor-type (quote box))
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("065efdd71e6d1502877fd5621b984cded01717930639ded0e569e1724d058af8" "ebfa8d0654af120fff174bc7ec08bf1fef63df97bdeff63161dbff6f61cef747" default)))
 '(electric-indent-mode nil)
 '(erc-fill-prefix "  ")
 '(erc-menu-mode t)
 '(erc-nick "jordan")
 '(erc-server "localhost")
 '(fci-rule-color "#f8fce8")
 '(geiser-active-implementations (quote (chicken)))
 '(geiser-default-implementation (quote chicken))
 '(geiser-mode-auto-p t)
 '(hl-paren-background-colors (quote ("#e8fce8" "#c1e7f8" "#f8e8e8")))
 '(hl-paren-colors (quote ("#40883f" "#0287c8" "#b85c57")))
 '(indent-tabs-mode nil)
 '(package-selected-packages
   (quote
    (smart-tabs-mode xresources-theme typescript-mode toml-mode toml slime rustfmt rc-mode racer pkgbuild-mode paredit nhexl-mode malabar-mode magit javadoc-lookup god-mode git-messenger flymake-rust flycheck-rust eclim company-racer cargo)))
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
 '(tab-width 2)
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
 '(magit-section-highlight ((t (:background "grey95" :foreground "black"))))
 '(menu ((t (:inverse-video t))))
 '(tty-menu-disabled-face ((t (:background "black" :foreground "white"))))
 '(tty-menu-enabled-face ((t (:background "black" :foreground "green" :weight bold))))
 '(tty-menu-selected-face ((t (:background "green" :foreground "black")))))
