;;hm_appearance

;기본 언어 설정 : 한글
(set-language-environment "Korean")

(setq default-frame-alist
      '((top . 0)
        (left . 0)
        (Width . 2000)
        (height . 1024)
        (cursor-color . "white")
        (cursor-type . box)
        (foreground-color . "light grey")
        ;; (font . "-xos4-terminus-medium-r-normal--22-220-72-72-c-110-iso8859-9")
        ;; (set-fontset-font "fontset-default" '(#xe0bc . #xf66e)
        ;;                   '("NanumGothicOTF" . "iso10646-1"))
;        (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-9"))

        (background-color . "black"))

        ;; (font . "-*-Courier-normal-r-*-*-11-*-*-*-c-*-iso8859-1")
)
        ;(font . "fontset-mook")))
;; (set-face-font 'default (font-spec :family "terminus" :size 9.0)) 
;; (set-fontset-font "fontset-default" 'korean-ksc5601 "-microsoft-naver dictionary-medium-r-normal--12-0-0-0-p-0-ksc5601.1987-0")

;; (set-default-font "-misc-droid sans mono-medium-r-normal--11-0-0-0-m-0-iso8859-1")


;;-----------------------------------------------------------------------

(set-default-font "DejaVu Sans Mono-9")
(set-fontset-font "fontset-default" 'korean-ksc5601 "-microsoft-Naver Dictionary-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1")
;;-microsoft-Naver Dictionary-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1