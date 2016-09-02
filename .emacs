(custom-set-variables
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces)

;; Transparent Emacs
;; See https://www.emacswiki.org/emacs/TransparentEmacs
;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;;(set-frame-parameter (selected-frame) 'alpha <both>)
;;(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
;;(add-to-list 'default-frame-alist '(alpha . (85 . 50)))
(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              100)
         '(85 . 50) '(100 . 100)))))
(global-set-key (kbd "C-c t") 'toggle-transparency)
;; Set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))

;; Configuring proxy.
;; See https://www.emacswiki.org/emacs/InstallingPackages
;; (setq url-proxy-services
;;     '(("no_proxy" . "^\\(localhost\\|10.*\\)")
;;       ("http" . "PROXY:PORT")
;;       ("https" . "PROXY:PORT")))


;; Loading package manager and addingsome package repositories
;; See http://blog.aaronbieber.com/2015/05/24/from-vim-to-emacs-in-fourteen-days.html
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)

;; Automatically installing packages
;; See http://blog.aaronbieber.com/2015/05/24/from-vim-to-emacs-in-fourteen-days.html
(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it's not.
  Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))
;; Make sure to have downloaded archive description.
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

;; Assuming you wish to install "Evil"
(ensure-package-installed 'powerline)

(powerline-center-theme)

