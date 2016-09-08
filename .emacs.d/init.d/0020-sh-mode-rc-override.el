;; When sh-mode loads an rc script, swap to rc mode
(add-hook
 'sh-mode-hook
 (lambda ()
   (save-excursion
     (beginning-of-buffer)
     (when (looking-at ".*\\<rc$")
       (rc-mode)))))
