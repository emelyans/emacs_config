;;(add-to-list 'package-archives
;;	     '("melpa.milkbox" . "http://melpa.milkbox.net/packages/")
;;	     t)
(unless (assoc-default "marmalade" package-archives)
  (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
  )
(unless (assoc-default "melpa" package-archives)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )
;;(unless (assoc-default "melpa" package-archive)
;;  (add-to-list 'package-archives' ("melpa-stable" . "http://stable.melpa.org/packages/") t)
;;  )

;;(package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(setq use-package-verbose t)
(setq use-package-always-ensure t)
(require 'use-package)
(use-package auto-compile
  :config (auto-compile-on-load-mode))
(setq load-prefer-newer t)
