(defun sudo-edit (&optional arg)
  "Edit the currently-visited file as root.

With prefix, prompt for a file to visit. Will also
prompt if not currently visiting a file."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file (concat
                  "/sudo:root@localhost:"
                  (ido-read-file-name "File file (as root): ")))
    (find-alternate-file (concat
                          "/sudo:root@localhost:"
                          buffer-file-name))))

(global-set-key (kbd "C-x C-r") 'sudo-edit)
