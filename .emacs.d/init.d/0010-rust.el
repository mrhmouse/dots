(require 'flymake-rust)
(add-hook 'rust-mode-hook
          'flymake-rust-load)
(add-hook 'rust-mode-hook
          'cargo-minor-mode)

(add-hook 'rust-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c <tab>")
                           #'rust-format-buffer)))

(setq racer-cmd
      "~/.cargo/bin/racer")
(setq racer-rust-src-path
      "~/.code/rust-lang/rust")

(add-hook 'rust-mode-hook
          #'racer-mode)
(add-hook 'racer-mode-hook
          #'eldoc-mode)
(add-hook 'racer-mode-hook
          #'company-mode)
(add-hook 'flycheck-mode-hook
          #'flycheck-rust-setup)
