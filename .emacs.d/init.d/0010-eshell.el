(add-hook 'eshell-mode-hook
          (lambda ()
            (paredit-mode)
            (defun clear ()
              (let ((eshell-buffer-maximum-lines 0))
                (eshell-truncate-buffer)))))
