(ido-mode)

;; Magit bindings
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(global-set-key (kbd "C-x v p") 'git-messenger:popup-message)

;; toggle god-mode with ctrl-c enter
(global-set-key (kbd "C-c RET")
                'god-local-mode)

;; org-mode keys
(global-set-key (kbd "C-c c")
                'org-capture)
(global-set-key (kbd "C-c a")
                'org-agenda)
