(defun load-init-files ()
  "Load every elisp file in init.d"
  (dolist (file (init-files))
    (load file)))

(defun init-files ()
  "Get a sorted list of every elisp file in init.d"
  (directory-files (init.d-directory) t ".*\\.el$"))

(defun init.d-directory ()
  "Get the path to the init.d directory"
  (concat user-emacs-directory "init.d/"))

(load-init-files)
