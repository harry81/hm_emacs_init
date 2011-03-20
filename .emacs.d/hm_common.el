;;hm_common

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(ecb-options-version "2.32")
 '(inhibit-startup-buffer-menu t)
 '(inhibit-startup-screen t)
 '(save-place t nil (saveplace))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil nil (tool-bar))
 '(tooltip-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(user-full-name "harry")
 '(user-mail-address "kd.pointer81@gmail.com")
 '(mail-sources (quote ((imap
                        :server "imap.gmail.com"
                        :port 993
                        :user "kd.pointer81"
                        :password "2345wert"
                        :stream ssl
                        :fetchflag "\\Seen"))))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(smtpmail-auth-credentials (quote (("smtp.gmail.com" 587 "kd.pointer81@gmail.com" "2345wert"))))
 '(smtpmail-starttls-credentials (quote (("smtp.gmail.com" 587 "nil" "nil"))))
 '(send-mail-function (quote smtpmail-send-it))
 '(gnus-select-method (quote (nnml "")))
 '(gnus-secondary-select-method nil)
)

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq make-backup-files nil)            ;; ¹é¾÷ ÆÄÀÏÀ» ÀÚµ¿À¸·Î ¸¸µéÁö ¾Ê´Â´Ù.
(setq inverse-video t)
(setq echo-keystrokes t)

(setq show-paren-style 'expression)            ; Highlight text between parens
;(global-hl-line-mode t)                        ; Highlight cursor line
(defalias 'yes-or-no-p 'y-or-n-p)              ; y/n instead of yes/no
(icomplete-mode t)                             ; Completion in mini-buffer
(desktop-save-mode t)                          ; Save session before quitting
;(speedbar t)                                   ; Quick file access with bar
(iswitchb-mode t)                               ;
(which-function-mode t)
(setq ispell-dictionary "english")             ; Set ispell dictionary
(setq grep-command "grep -i -nH -e ")          ; Set grep command options

(define-key minibuffer-local-map [tab] 'minibuffer-complete)

(put 'upcase-region 'disabled nil)

(add-to-list 'load-path "~/.emacs.d/plugins")

(setq-default indent-tabs-mode nil)  ;; TABÀ» °ø¹éÀ¸·Î ¹Ù²ãÁØ´Ù.

;;-----------------------------------------------------------------------
; ±âº» ¾ð¾î ¼³Á¤ : ÇÑ±Û
 (set-language-environment "Korean")

(set-default-font "-misc-droid sans mono-medium-r-normal--11-0-0-0-m-0-iso8859-1")
(set-fontset-font "fontset-default" 'korean-ksc5601 "-microsoft-naver dictionary-medium-r-normal--12-0-0-0-p-0-ksc5601.1987-0")




(setq blink-matching-paren t)                                 ;; ÀÚµ¿À¸·Î °ýÈ£ ¸ÅÄª ±â´É È°¼ºÈ­
(setq blink-maching-delay 2)                                  ;; 2ÃÊ

;;-----------------------------------------------------------------------
(defun my-tabbar-buffer-groups (buffer)
  "Return the list of group names BUFFER belongs to.
This function is a custom function for tabbar-mode's tabbar-buffer-groups.
This function group all buffers into 2 groups:
Those user buffer, and those emacs buffer.
Emacs buffer are those starting with -Y¢¥*¢®."
  (with-current-buffer (get-buffer buffer)
    (if (string-equal "*" (substring (buffer-name) 0 1))
        '("emacs-buffer")
        '("user-buffer"))))
(setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)
(put 'scroll-left 'disabled nil)
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))



(define-key minibuffer-local-map [tab] 'minibuffer-complete)

(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
(setq x-select-enable-clipboard t) ; 