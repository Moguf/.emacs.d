;; fundamental-settings
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-m" 'magit-status)

(line-number-mode 1)
(column-number-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq-default transient-mark-mode t)
(setq-default c-basic-offset 4     ;;基本インデント量4
              tab-width 4          ;;タブ幅4
              indent-tabs-mode nil)  ;;インデントをタブでするかスペースでするか

(add-to-list 'load-path "~/.emacs.d/elisp")

;;package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;color-theme
(add-to-list 'load-path "~/.emacs.d/elisp/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(color-theme-subtle-hacker)

;;auto-complete
(global-auto-complete-mode t)

;;flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;;jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
