(load-theme 'tango-dark t)

;;(setq frame-title-format "emacs")

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(column-number-mode)

;;(show-paren-mode)
;;(global-hl-line-mode)
;;(set-default 'cursor-type 'hbar)

(use-package nlinum)
(nlinum-mode)

(use-package linum-relative)

(use-package powerline)
(powerline-center-theme)
(setq powerline-default-separator 'wave)

(use-package alpha)
(require 'alpha)
(global-set-key (kbd "C-M-)") 'transparency-increase)
(global-set-key (kbd "C-M-(") 'transparency-decrease)

(use-package nyan-mode)
