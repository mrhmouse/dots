(defun my-erc-fill-function ()
  "Fill from `point-min` to `point-max`, always beginning with a line break"
  (save-excursion
    (goto-char (point-min))
    (when (looking-at "<[^>]*>")
      (re-search-forward "<[^>]*>")
      (insert "\n  "))
    (fill-region (point) (point-max))))

(add-hook
 'erc-mode-hook
 (lambda ()
   (setq erc-fill-function 'my-erc-fill-function)
   (add-hook
    'window-configuration-change-hook
    (lambda ()
      (setq erc-fill-column
            (- (window-width) 10))))))
