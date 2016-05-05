(ido-mode)

;; Magit bindings
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(global-set-key (kbd "C-x v p") 'git-messenger:popup-message)

;; toggle god-mode with ctrl-enter
(global-set-key (kbd "C-^")
                'god-local-mode)
