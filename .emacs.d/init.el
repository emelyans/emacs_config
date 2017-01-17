(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config")

(load "proxy.el")

(load "package-repositories.el")

(load "look-and-feel.el")
(load "ac-emacs.el")
(load "undo.el")
(load "navigation.el")
(load "mics.el")
(load "programming-elisp.el")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (eldoc-eval paredit multiple-cursors evil ztree ace-jump-mode switch-window undo-tree auto-complete smex auto-compile use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
