;; When sh-mode loads an rc script, swap to rc mode
(add-hook
 'sh-mode-hook
 (lambda ()
   (save-excursion
     (goto-char (point-min))
     (when (looking-at ".*\\<rc$")
       (rc-mode)))))
