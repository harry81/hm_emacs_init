(load "~/.emacs.d/hm_custom")
(load "~/.emacs.d/hm_common")
(load "~/.emacs.d/hm_common_key")
(load "~/.emacs.d/hm_appearance")
(load "~/.emacs.d/hm_development")
(load "~/.emacs.d/hm_ide")



(add-to-list 'load-path "/home/hchoi/.emacs.d/plugin/google-maps")
;;(require 'google-maps)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(ecb-options-version "2.32")
 '(gnus-secondary-select-method nil)
 '(gnus-select-method (quote (nnml "")))
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-screen t)
 '(mail-sources (quote ((imap :server "imap.gmail.com" :port 993 :user "kd.pointer81" :password "2345wert" :stream ssl :fetchflag "\\Seen"))))
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(smtpmail-auth-credentials (quote (("smtp.gmail.com" 587 "kd.pointer81@gmail.com" "2345wert"))))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(smtpmail-starttls-credentials (quote (("smtp.gmail.com" 587 "nil" "nil"))))
 '(text-mode-hook (quote (text-mode-hook-identify)))
 '(tool-bar-mode nil nil (tool-bar))
 '(tooltip-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(user-full-name "harry")
 '(user-mail-address "kd.pointer81@gmail.com"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
