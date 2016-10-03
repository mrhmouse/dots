(require 'package)

(add-to-list
 'package-archives
 '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(let ((packages '(paredit
		  flymake-rust
                  javadoc-lookup
                  magit
                  smart-tabs-mode)))
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))))
