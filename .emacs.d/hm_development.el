;;hm_development

;; PYTHON
(add-to-list 'load-path "/home/hchoi/.emacs.d/plugin/python-mode")
;;(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
;;(setq interpreter-mode-alist (cons '("pythong" . python-mode)
;;                                      interpreter-mode-alist))
;;(autoload 'python-mode "python-mode" "Python editing mode." t)
;;(global-font-lock-mode t)
;;(setq font-lock-maximum-decoration t)
;;
;;(autoload 'pymacs-apply "pymacs")
;;(autoload 'pymacs-call "pymacs")
;;(autoload 'pymacs-eval "pymacs" nil t)
;;(autoload 'pymacs-exec "pymacs" nil t)
;;(autoload 'pymacs-load "pymacs" nil t)
;;(eval-after-load "pymacs"
;;  '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY"))

;;-----------------------------------------------------------------------
;(require 'yasnippet) ;; not yasnippet-bundle
;(yas/initialize)
;(yas/load-directory "~/.emacs.d/plugins/snippets/")

;(require 'blank-mode) ;;


;; python-mode settings
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist(cons '("python" . python-mode)
                             interpreter-mode-alist))
;; path to the python interpreter, e.g.: ~rw/python27/bin/python2.7
(setq py-python-command "python")
(autoload 'python-mode "python-mode" "Python editing mode." t)

;; pymacs settings
(setq pymacs-python-command py-python-command)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")

(add-to-list 'auto-mode-alist '("\\.pc$" . c-mode))

(put 'upcase-region 'disabled nil)

(load-file "/usr/share/emacs/site-lisp/xcscope.el")
(setq cscope-do-not-update-database t)
(require 'xcscope)

(require 'egg)

(add-to-list 'load-path "/home/hchoi/.emacs.d/plugin/git-emacs")
(require 'git-emacs)

(add-to-list 'load-path "/home/hchoi/.emacs.d/plugin/psvn")
(require 'psvn)


(setq password-cache-expiry nil)