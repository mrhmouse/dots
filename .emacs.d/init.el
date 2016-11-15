(package-initialize)

(defun load-init-files ()
  "Load every elisp file in init.d"
  (dolist (file (init-files))
    (byte-compile-file file t)))

(defun init-files ()
  "Get a sorted list of every elisp file in init.d"
  (directory-files (init.d-directory) t ".*\\.el$"))

(defun init.d-directory ()
  "Get the path to the init.d directory"
  (concat user-emacs-directory "init.d/"))

(load-init-files)

;; Global settings
(menu-bar-mode -1)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
