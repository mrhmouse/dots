; Show current error with C-c SPC
(add-hook 'flymake-mode-hook
          #'(lambda ()
              (local-set-key (kbd "C-c SPC")
                             'flymake-popup-current-error-menu)))
