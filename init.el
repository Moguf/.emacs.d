;; fundamental-settings
(global-set-key "\C-h" 'delete-backward-char)
(line-number-mode 1)
(column-number-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq-default transient-mark-mode t)
(setq-default c-basic-offset 4     ;;基本インデント量4
              tab-width 4          ;;タブ幅4
              indent-tabs-mode nil)  ;;インデントをタブでするかスペースでするか


;;package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
