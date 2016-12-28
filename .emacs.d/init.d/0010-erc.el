(add-hook
 'erc-mode-hook
 (lambda ()
   (add-hook
    'window-configuration-change-hook
    (lambda ()
      (setq erc-fill-column
            (- (window-width) 10))))))
